; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_link.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32 }
%struct.waitq_set = type { i32 }
%struct.waitq_link = type { i32 }

@WAITQ_SHOULD_LOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Invalid waitq: %p\00", align 1
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Link waitq %p to wqset 0x%llx\00", align 1
@WQL_LINK = common dso_local global i32 0, align 4
@KERN_NO_SPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @waitq_link(%struct.waitq* %0, %struct.waitq_set* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.waitq*, align 8
  %7 = alloca %struct.waitq_set*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.waitq_link*, align 8
  %12 = alloca i32, align 4
  store %struct.waitq* %0, %struct.waitq** %6, align 8
  store %struct.waitq_set* %1, %struct.waitq_set** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @WAITQ_SHOULD_LOCK, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %12, align 4
  %17 = load %struct.waitq*, %struct.waitq** %6, align 8
  %18 = call i32 @waitq_valid(%struct.waitq* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.waitq*, %struct.waitq** %6, align 8
  %22 = call i64 @waitq_irq_safe(%struct.waitq* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %4
  %25 = load %struct.waitq*, %struct.waitq** %6, align 8
  %26 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.waitq* %25)
  br label %27

27:                                               ; preds = %24, %20
  %28 = load %struct.waitq_set*, %struct.waitq_set** %7, align 8
  %29 = call i32 @waitqs_is_set(%struct.waitq_set* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %32, i32* %5, align 4
  br label %98

33:                                               ; preds = %27
  %34 = load i64*, i64** %9, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i64*, i64** %9, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %36, %33
  %41 = load %struct.waitq_set*, %struct.waitq_set** %7, align 8
  %42 = call i32 @waitqs_is_linked(%struct.waitq_set* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load %struct.waitq_set*, %struct.waitq_set** %7, align 8
  %46 = call i32 @waitq_set_lazy_init_link(%struct.waitq_set* %45)
  br label %47

47:                                               ; preds = %44, %40
  br label %48

48:                                               ; preds = %47, %36
  %49 = load %struct.waitq*, %struct.waitq** %6, align 8
  %50 = call i64 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.waitq* %49)
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.waitq_set*, %struct.waitq_set** %7, align 8
  %53 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @wqdbg_v(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %51, i32 %54)
  %56 = load i64*, i64** %9, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %48
  %59 = load i64*, i64** %9, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i64*, i64** %9, align 8
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @WQL_LINK, align 4
  %66 = call %struct.waitq_link* @wql_get_reserved(i64 %64, i32 %65)
  store %struct.waitq_link* %66, %struct.waitq_link** %11, align 8
  %67 = load i64*, i64** %9, align 8
  store i64 0, i64* %67, align 8
  br label %71

68:                                               ; preds = %58, %48
  %69 = load i32, i32* @WQL_LINK, align 4
  %70 = call %struct.waitq_link* @wql_alloc_link(i32 %69)
  store %struct.waitq_link* %70, %struct.waitq_link** %11, align 8
  br label %71

71:                                               ; preds = %68, %62
  %72 = load %struct.waitq_link*, %struct.waitq_link** %11, align 8
  %73 = icmp ne %struct.waitq_link* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %75, i32* %5, align 4
  br label %98

76:                                               ; preds = %71
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.waitq*, %struct.waitq** %6, align 8
  %81 = call i32 @waitq_lock(%struct.waitq* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.waitq*, %struct.waitq** %6, align 8
  %84 = load %struct.waitq_set*, %struct.waitq_set** %7, align 8
  %85 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.waitq_link*, %struct.waitq_link** %11, align 8
  %88 = call i32 @waitq_link_internal(%struct.waitq* %83, i32 %86, %struct.waitq_link* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load %struct.waitq*, %struct.waitq** %6, align 8
  %93 = call i32 @waitq_unlock(%struct.waitq* %92)
  br label %94

94:                                               ; preds = %91, %82
  %95 = load %struct.waitq_link*, %struct.waitq_link** %11, align 8
  %96 = call i32 @wql_put_link(%struct.waitq_link* %95)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %94, %74, %31
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @waitq_valid(%struct.waitq*) #1

declare dso_local i64 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local i32 @panic(i8*, %struct.waitq*) #1

declare dso_local i32 @waitqs_is_set(%struct.waitq_set*) #1

declare dso_local i32 @waitqs_is_linked(%struct.waitq_set*) #1

declare dso_local i32 @waitq_set_lazy_init_link(%struct.waitq_set*) #1

declare dso_local i32 @wqdbg_v(i8*, i8*, i32) #1

declare dso_local i64 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.waitq*) #1

declare dso_local %struct.waitq_link* @wql_get_reserved(i64, i32) #1

declare dso_local %struct.waitq_link* @wql_alloc_link(i32) #1

declare dso_local i32 @waitq_lock(%struct.waitq*) #1

declare dso_local i32 @waitq_link_internal(%struct.waitq*, i32, %struct.waitq_link*) #1

declare dso_local i32 @waitq_unlock(%struct.waitq*) #1

declare dso_local i32 @wql_put_link(%struct.waitq_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
