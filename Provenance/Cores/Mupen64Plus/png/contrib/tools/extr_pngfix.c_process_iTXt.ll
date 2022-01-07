; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_process_iTXt.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_process_iTXt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32*, %struct.chunk* }
%struct.chunk = type { i32 }

@INVALID_ERROR_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"iTXt chunk length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @process_iTXt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_iTXt(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.chunk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 1
  %9 = load %struct.chunk*, %struct.chunk** %8, align 8
  store %struct.chunk* %9, %struct.chunk** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.chunk*, %struct.chunk** %4, align 8
  %11 = icmp ne %struct.chunk* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.file*, %struct.file** %3, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br label %17

17:                                               ; preds = %12, %1
  %18 = phi i1 [ false, %1 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.chunk*, %struct.chunk** %4, align 8
  %22 = getelementptr inbounds %struct.chunk, %struct.chunk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.chunk*, %struct.chunk** %4, align 8
  %25 = call i32 @setpos(%struct.chunk* %24)
  br label %26

26:                                               ; preds = %84, %17
  %27 = load i32, i32* %5, align 4
  %28 = icmp sge i32 %27, 5
  br i1 %28, label %29, label %85

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = load %struct.file*, %struct.file** %3, align 8
  %35 = call i64 @reread_byte(%struct.file* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %84

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = load %struct.file*, %struct.file** %3, align 8
  %43 = call i64 @reread_byte(%struct.file* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 1, i32* %2, align 4
  br label %89

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  %51 = load %struct.file*, %struct.file** %3, align 8
  %52 = call i64 @reread_byte(%struct.file* %51)
  br label %53

53:                                               ; preds = %82, %46
  %54 = load i32, i32* %5, align 4
  %55 = icmp sge i32 %54, 9
  br i1 %55, label %56, label %83

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  %61 = load %struct.file*, %struct.file** %3, align 8
  %62 = call i64 @reread_byte(%struct.file* %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %80, %64
  %66 = load i32, i32* %5, align 4
  %67 = icmp sge i32 %66, 8
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  %73 = load %struct.file*, %struct.file** %3, align 8
  %74 = call i64 @reread_byte(%struct.file* %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load %struct.file*, %struct.file** %3, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @zlib_check(%struct.file* %77, i32 %78)
  store i32 %79, i32* %2, align 4
  br label %89

80:                                               ; preds = %68
  br label %65

81:                                               ; preds = %65
  br label %82

82:                                               ; preds = %81, %56
  br label %53

83:                                               ; preds = %53
  br label %85

84:                                               ; preds = %29
  br label %26

85:                                               ; preds = %83, %26
  %86 = load %struct.file*, %struct.file** %3, align 8
  %87 = load i32, i32* @INVALID_ERROR_CODE, align 4
  %88 = call i32 @log_error(%struct.file* %86, i32 %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %85, %76, %45
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @setpos(%struct.chunk*) #1

declare dso_local i64 @reread_byte(%struct.file*) #1

declare dso_local i32 @zlib_check(%struct.file*, i32) #1

declare dso_local i32 @log_error(%struct.file*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
