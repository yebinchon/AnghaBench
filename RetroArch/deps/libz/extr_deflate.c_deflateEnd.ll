; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libz/extr_deflate.c_deflateEnd.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libz/extr_deflate.c_deflateEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internal_state_deflate = type { i32, i32, i32, i32, i32, %struct.internal_state_deflate* }

@Z_NULL = common dso_local global %struct.internal_state_deflate* null, align 8
@Z_STREAM_ERROR = common dso_local global i32 0, align 4
@INIT_STATE = common dso_local global i32 0, align 4
@EXTRA_STATE = common dso_local global i32 0, align 4
@NAME_STATE = common dso_local global i32 0, align 4
@COMMENT_STATE = common dso_local global i32 0, align 4
@HCRC_STATE = common dso_local global i32 0, align 4
@BUSY_STATE = common dso_local global i32 0, align 4
@FINISH_STATE = common dso_local global i32 0, align 4
@Z_DATA_ERROR = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @deflateEnd(%struct.internal_state_deflate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.internal_state_deflate*, align 8
  %4 = alloca %struct.internal_state_deflate*, align 8
  %5 = alloca i32, align 4
  store %struct.internal_state_deflate* %0, %struct.internal_state_deflate** %3, align 8
  %6 = load %struct.internal_state_deflate*, %struct.internal_state_deflate** %3, align 8
  %7 = load %struct.internal_state_deflate*, %struct.internal_state_deflate** @Z_NULL, align 8
  %8 = icmp eq %struct.internal_state_deflate* %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.internal_state_deflate*, %struct.internal_state_deflate** %3, align 8
  %11 = getelementptr inbounds %struct.internal_state_deflate, %struct.internal_state_deflate* %10, i32 0, i32 5
  %12 = load %struct.internal_state_deflate*, %struct.internal_state_deflate** %11, align 8
  %13 = load %struct.internal_state_deflate*, %struct.internal_state_deflate** @Z_NULL, align 8
  %14 = icmp eq %struct.internal_state_deflate* %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9, %1
  %16 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %16, i32* %2, align 4
  br label %87

17:                                               ; preds = %9
  %18 = load %struct.internal_state_deflate*, %struct.internal_state_deflate** %3, align 8
  %19 = getelementptr inbounds %struct.internal_state_deflate, %struct.internal_state_deflate* %18, i32 0, i32 5
  %20 = load %struct.internal_state_deflate*, %struct.internal_state_deflate** %19, align 8
  store %struct.internal_state_deflate* %20, %struct.internal_state_deflate** %4, align 8
  %21 = load %struct.internal_state_deflate*, %struct.internal_state_deflate** %4, align 8
  %22 = getelementptr inbounds %struct.internal_state_deflate, %struct.internal_state_deflate* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @INIT_STATE, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @EXTRA_STATE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @NAME_STATE, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @COMMENT_STATE, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @HCRC_STATE, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @BUSY_STATE, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @FINISH_STATE, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %52, i32* %2, align 4
  br label %87

53:                                               ; preds = %47, %43, %39, %35, %31, %27, %17
  %54 = load %struct.internal_state_deflate*, %struct.internal_state_deflate** %3, align 8
  %55 = load %struct.internal_state_deflate*, %struct.internal_state_deflate** %4, align 8
  %56 = getelementptr inbounds %struct.internal_state_deflate, %struct.internal_state_deflate* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @TRY_FREE(%struct.internal_state_deflate* %54, i32 %57)
  %59 = load %struct.internal_state_deflate*, %struct.internal_state_deflate** %3, align 8
  %60 = load %struct.internal_state_deflate*, %struct.internal_state_deflate** %4, align 8
  %61 = getelementptr inbounds %struct.internal_state_deflate, %struct.internal_state_deflate* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @TRY_FREE(%struct.internal_state_deflate* %59, i32 %62)
  %64 = load %struct.internal_state_deflate*, %struct.internal_state_deflate** %3, align 8
  %65 = load %struct.internal_state_deflate*, %struct.internal_state_deflate** %4, align 8
  %66 = getelementptr inbounds %struct.internal_state_deflate, %struct.internal_state_deflate* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @TRY_FREE(%struct.internal_state_deflate* %64, i32 %67)
  %69 = load %struct.internal_state_deflate*, %struct.internal_state_deflate** %3, align 8
  %70 = load %struct.internal_state_deflate*, %struct.internal_state_deflate** %4, align 8
  %71 = getelementptr inbounds %struct.internal_state_deflate, %struct.internal_state_deflate* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @TRY_FREE(%struct.internal_state_deflate* %69, i32 %72)
  %74 = load %struct.internal_state_deflate*, %struct.internal_state_deflate** %3, align 8
  %75 = load %struct.internal_state_deflate*, %struct.internal_state_deflate** %4, align 8
  %76 = call i32 @ZFREE(%struct.internal_state_deflate* %74, %struct.internal_state_deflate* %75)
  %77 = load %struct.internal_state_deflate*, %struct.internal_state_deflate** @Z_NULL, align 8
  store %struct.internal_state_deflate* %77, %struct.internal_state_deflate** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @BUSY_STATE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %53
  %82 = load i32, i32* @Z_DATA_ERROR, align 4
  br label %85

83:                                               ; preds = %53
  %84 = load i32, i32* @Z_OK, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %51, %15
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @TRY_FREE(%struct.internal_state_deflate*, i32) #1

declare dso_local i32 @ZFREE(%struct.internal_state_deflate*, %struct.internal_state_deflate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
