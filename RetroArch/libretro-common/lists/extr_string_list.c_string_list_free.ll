; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/lists/extr_string_list.c_string_list_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/lists/extr_string_list.c_string_list_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i64, %struct.string_list*, %struct.string_list*, %struct.string_list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @string_list_free(%struct.string_list* %0) #0 {
  %2 = alloca %struct.string_list*, align 8
  %3 = alloca i64, align 8
  store %struct.string_list* %0, %struct.string_list** %2, align 8
  %4 = load %struct.string_list*, %struct.string_list** %2, align 8
  %5 = icmp ne %struct.string_list* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %81

7:                                                ; preds = %1
  %8 = load %struct.string_list*, %struct.string_list** %2, align 8
  %9 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 1
  %10 = load %struct.string_list*, %struct.string_list** %9, align 8
  %11 = icmp ne %struct.string_list* %10, null
  br i1 %11, label %12, label %76

12:                                               ; preds = %7
  store i64 0, i64* %3, align 8
  br label %13

13:                                               ; preds = %68, %12
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.string_list*, %struct.string_list** %2, align 8
  %16 = getelementptr inbounds %struct.string_list, %struct.string_list* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %71

19:                                               ; preds = %13
  %20 = load %struct.string_list*, %struct.string_list** %2, align 8
  %21 = getelementptr inbounds %struct.string_list, %struct.string_list* %20, i32 0, i32 1
  %22 = load %struct.string_list*, %struct.string_list** %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct.string_list, %struct.string_list* %22, i64 %23
  %25 = getelementptr inbounds %struct.string_list, %struct.string_list* %24, i32 0, i32 3
  %26 = load %struct.string_list*, %struct.string_list** %25, align 8
  %27 = icmp ne %struct.string_list* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load %struct.string_list*, %struct.string_list** %2, align 8
  %30 = getelementptr inbounds %struct.string_list, %struct.string_list* %29, i32 0, i32 1
  %31 = load %struct.string_list*, %struct.string_list** %30, align 8
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds %struct.string_list, %struct.string_list* %31, i64 %32
  %34 = getelementptr inbounds %struct.string_list, %struct.string_list* %33, i32 0, i32 3
  %35 = load %struct.string_list*, %struct.string_list** %34, align 8
  %36 = call i32 @free(%struct.string_list* %35)
  br label %37

37:                                               ; preds = %28, %19
  %38 = load %struct.string_list*, %struct.string_list** %2, align 8
  %39 = getelementptr inbounds %struct.string_list, %struct.string_list* %38, i32 0, i32 1
  %40 = load %struct.string_list*, %struct.string_list** %39, align 8
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds %struct.string_list, %struct.string_list* %40, i64 %41
  %43 = getelementptr inbounds %struct.string_list, %struct.string_list* %42, i32 0, i32 2
  %44 = load %struct.string_list*, %struct.string_list** %43, align 8
  %45 = icmp ne %struct.string_list* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %37
  %47 = load %struct.string_list*, %struct.string_list** %2, align 8
  %48 = getelementptr inbounds %struct.string_list, %struct.string_list* %47, i32 0, i32 1
  %49 = load %struct.string_list*, %struct.string_list** %48, align 8
  %50 = load i64, i64* %3, align 8
  %51 = getelementptr inbounds %struct.string_list, %struct.string_list* %49, i64 %50
  %52 = getelementptr inbounds %struct.string_list, %struct.string_list* %51, i32 0, i32 2
  %53 = load %struct.string_list*, %struct.string_list** %52, align 8
  %54 = call i32 @free(%struct.string_list* %53)
  br label %55

55:                                               ; preds = %46, %37
  %56 = load %struct.string_list*, %struct.string_list** %2, align 8
  %57 = getelementptr inbounds %struct.string_list, %struct.string_list* %56, i32 0, i32 1
  %58 = load %struct.string_list*, %struct.string_list** %57, align 8
  %59 = load i64, i64* %3, align 8
  %60 = getelementptr inbounds %struct.string_list, %struct.string_list* %58, i64 %59
  %61 = getelementptr inbounds %struct.string_list, %struct.string_list* %60, i32 0, i32 3
  store %struct.string_list* null, %struct.string_list** %61, align 8
  %62 = load %struct.string_list*, %struct.string_list** %2, align 8
  %63 = getelementptr inbounds %struct.string_list, %struct.string_list* %62, i32 0, i32 1
  %64 = load %struct.string_list*, %struct.string_list** %63, align 8
  %65 = load i64, i64* %3, align 8
  %66 = getelementptr inbounds %struct.string_list, %struct.string_list* %64, i64 %65
  %67 = getelementptr inbounds %struct.string_list, %struct.string_list* %66, i32 0, i32 2
  store %struct.string_list* null, %struct.string_list** %67, align 8
  br label %68

68:                                               ; preds = %55
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %3, align 8
  br label %13

71:                                               ; preds = %13
  %72 = load %struct.string_list*, %struct.string_list** %2, align 8
  %73 = getelementptr inbounds %struct.string_list, %struct.string_list* %72, i32 0, i32 1
  %74 = load %struct.string_list*, %struct.string_list** %73, align 8
  %75 = call i32 @free(%struct.string_list* %74)
  br label %76

76:                                               ; preds = %71, %7
  %77 = load %struct.string_list*, %struct.string_list** %2, align 8
  %78 = getelementptr inbounds %struct.string_list, %struct.string_list* %77, i32 0, i32 1
  store %struct.string_list* null, %struct.string_list** %78, align 8
  %79 = load %struct.string_list*, %struct.string_list** %2, align 8
  %80 = call i32 @free(%struct.string_list* %79)
  br label %81

81:                                               ; preds = %76, %6
  ret void
}

declare dso_local i32 @free(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
