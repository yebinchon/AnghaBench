; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_set_deinit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_set_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq_set = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }
%struct.waitq_link = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"trying to de-initialize an invalid wqset @%p\00", align 1
@WQL_WQS = common dso_local global i64 0, align 8
@wqset_clear_prepost_chain_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @waitq_set_deinit(%struct.waitq_set* %0) #0 {
  %2 = alloca %struct.waitq_set*, align 8
  %3 = alloca %struct.waitq_link*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.waitq_set* %0, %struct.waitq_set** %2, align 8
  store %struct.waitq_link* null, %struct.waitq_link** %3, align 8
  %6 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %7 = call i32 @waitqs_is_set(%struct.waitq_set* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %11 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.waitq_set* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %14 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %13, i32 0, i32 2
  %15 = call i32 @waitq_irq_safe(%struct.TYPE_5__* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %21 = call i32 @waitq_set_lock(%struct.waitq_set* %20)
  %22 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %23 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %4, align 8
  %25 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %26 = call i64 @waitqs_is_linked(%struct.waitq_set* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %12
  %29 = load i64, i64* %4, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %78

31:                                               ; preds = %28, %12
  %32 = load i64, i64* %4, align 8
  %33 = call %struct.waitq_link* @wql_get_link(i64 %32)
  store %struct.waitq_link* %33, %struct.waitq_link** %3, align 8
  %34 = load %struct.waitq_link*, %struct.waitq_link** %3, align 8
  %35 = icmp ne %struct.waitq_link* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.waitq_link*, %struct.waitq_link** %3, align 8
  %38 = call i32 @wql_invalidate(%struct.waitq_link* %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.waitq_link*, %struct.waitq_link** %3, align 8
  %41 = icmp ne %struct.waitq_link* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %44 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %42
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.waitq_link*, %struct.waitq_link** %3, align 8
  %51 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %49, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %48, %42, %39
  %56 = load %struct.waitq_link*, %struct.waitq_link** %3, align 8
  %57 = icmp ne %struct.waitq_link* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.waitq_link*, %struct.waitq_link** %3, align 8
  %60 = call i32 @wql_put_link(%struct.waitq_link* %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %63 = call i32 @waitq_set_unlock(%struct.waitq_set* %62)
  br label %134

64:                                               ; preds = %48
  %65 = load %struct.waitq_link*, %struct.waitq_link** %3, align 8
  %66 = icmp ne %struct.waitq_link* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load %struct.waitq_link*, %struct.waitq_link** %3, align 8
  %69 = call i64 @wql_type(%struct.waitq_link* %68)
  %70 = load i64, i64* @WQL_WQS, align 8
  %71 = icmp eq i64 %69, %70
  br label %72

72:                                               ; preds = %67, %64
  %73 = phi i1 [ false, %64 ], [ %71, %67 ]
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %77 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %72, %28
  store i64 0, i64* %5, align 8
  %79 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %80 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %78
  %85 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %86 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.waitq_link*, %struct.waitq_link** %3, align 8
  %91 = icmp ne %struct.waitq_link* %90, null
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %95 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %5, align 8
  br label %97

97:                                               ; preds = %89, %84, %78
  %98 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %99 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  %100 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %101 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  store i64 0, i64* %102, align 8
  %103 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %104 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  store i64 0, i64* %105, align 8
  %106 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %107 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  store i64 0, i64* %108, align 8
  %109 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %110 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i64 0, i64* %111, align 8
  %112 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %113 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %112, i32 0, i32 2
  %114 = call i32 @waitq_unlink_all_unlock(%struct.TYPE_5__* %113)
  %115 = load %struct.waitq_link*, %struct.waitq_link** %3, align 8
  %116 = icmp ne %struct.waitq_link* %115, null
  br i1 %116, label %117, label %127

117:                                              ; preds = %97
  br label %118

118:                                              ; preds = %122, %117
  %119 = load %struct.waitq_link*, %struct.waitq_link** %3, align 8
  %120 = call i32 @wql_refcnt(%struct.waitq_link* %119)
  %121 = icmp sgt i32 %120, 1
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = call i32 @delay(i32 1)
  br label %118

124:                                              ; preds = %118
  %125 = load %struct.waitq_link*, %struct.waitq_link** %3, align 8
  %126 = call i32 @wql_put_link(%struct.waitq_link* %125)
  br label %127

127:                                              ; preds = %124, %97
  %128 = load i64, i64* %5, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i64, i64* %5, align 8
  %132 = load i32, i32* @wqset_clear_prepost_chain_cb, align 4
  %133 = call i32 @wq_prepost_iterate(i64 %131, i32* null, i32 %132)
  br label %134

134:                                              ; preds = %61, %130, %127
  ret void
}

declare dso_local i32 @waitqs_is_set(%struct.waitq_set*) #1

declare dso_local i32 @panic(i8*, %struct.waitq_set*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_irq_safe(%struct.TYPE_5__*) #1

declare dso_local i32 @waitq_set_lock(%struct.waitq_set*) #1

declare dso_local i64 @waitqs_is_linked(%struct.waitq_set*) #1

declare dso_local %struct.waitq_link* @wql_get_link(i64) #1

declare dso_local i32 @wql_invalidate(%struct.waitq_link*) #1

declare dso_local i32 @wql_put_link(%struct.waitq_link*) #1

declare dso_local i32 @waitq_set_unlock(%struct.waitq_set*) #1

declare dso_local i64 @wql_type(%struct.waitq_link*) #1

declare dso_local i32 @waitq_unlink_all_unlock(%struct.TYPE_5__*) #1

declare dso_local i32 @wql_refcnt(%struct.waitq_link*) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i32 @wq_prepost_iterate(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
