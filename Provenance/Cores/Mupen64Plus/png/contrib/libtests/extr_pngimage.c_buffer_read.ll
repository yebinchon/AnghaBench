; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngimage.c_buffer_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngimage.c_buffer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i32 }
%struct.buffer = type { i64, i64, %struct.buffer_list*, %struct.buffer_list* }
%struct.buffer_list = type { i64, %struct.buffer_list* }

@USER_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"file truncated (%lu bytes)\00", align 1
@INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"damaged buffer list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display*, %struct.buffer*, i64, i64)* @buffer_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_read(%struct.display* %0, %struct.buffer* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.display*, align 8
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.buffer_list*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.display* %0, %struct.display** %5, align 8
  store %struct.buffer* %1, %struct.buffer** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.buffer*, %struct.buffer** %6, align 8
  %13 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 2
  %14 = load %struct.buffer_list*, %struct.buffer_list** %13, align 8
  store %struct.buffer_list* %14, %struct.buffer_list** %9, align 8
  %15 = load %struct.buffer*, %struct.buffer** %6, align 8
  %16 = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  br label %18

18:                                               ; preds = %67, %4
  %19 = load i64, i64* %8, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %85

21:                                               ; preds = %18
  %22 = load %struct.buffer_list*, %struct.buffer_list** %9, align 8
  %23 = icmp eq %struct.buffer_list* %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %21
  %25 = load %struct.buffer_list*, %struct.buffer_list** %9, align 8
  %26 = load %struct.buffer*, %struct.buffer** %6, align 8
  %27 = getelementptr inbounds %struct.buffer, %struct.buffer* %26, i32 0, i32 3
  %28 = load %struct.buffer_list*, %struct.buffer_list** %27, align 8
  %29 = icmp eq %struct.buffer_list* %25, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.buffer*, %struct.buffer** %6, align 8
  %33 = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp uge i64 %31, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30, %21
  %37 = load %struct.display*, %struct.display** %5, align 8
  %38 = load i32, i32* @USER_ERROR, align 4
  %39 = load i64, i64* %8, align 8
  %40 = call i32 (%struct.display*, i32, i8*, ...) @display_log(%struct.display* %37, i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %39)
  br label %85

41:                                               ; preds = %30, %24
  %42 = load i64, i64* %10, align 8
  %43 = icmp uge i64 %42, 8
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = load %struct.buffer_list*, %struct.buffer_list** %9, align 8
  %46 = getelementptr inbounds %struct.buffer_list, %struct.buffer_list* %45, i32 0, i32 1
  %47 = load %struct.buffer_list*, %struct.buffer_list** %46, align 8
  store %struct.buffer_list* %47, %struct.buffer_list** %9, align 8
  store i64 0, i64* %10, align 8
  %48 = load %struct.buffer_list*, %struct.buffer_list** %9, align 8
  %49 = load %struct.buffer*, %struct.buffer** %6, align 8
  %50 = getelementptr inbounds %struct.buffer, %struct.buffer* %49, i32 0, i32 2
  store %struct.buffer_list* %48, %struct.buffer_list** %50, align 8
  %51 = load %struct.buffer_list*, %struct.buffer_list** %9, align 8
  %52 = icmp eq %struct.buffer_list* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load %struct.display*, %struct.display** %5, align 8
  %55 = load i32, i32* @INTERNAL_ERROR, align 4
  %56 = call i32 (%struct.display*, i32, i8*, ...) @display_log(%struct.display* %54, i32 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %85

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57, %41
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %10, align 8
  %61 = sub i64 8, %60
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i64, i64* %8, align 8
  store i64 %66, i64* %11, align 8
  br label %67

67:                                               ; preds = %65, %59
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.buffer_list*, %struct.buffer_list** %9, align 8
  %70 = getelementptr inbounds %struct.buffer_list, %struct.buffer_list* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %71, %72
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @memcpy(i64 %68, i64 %73, i64 %74)
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %10, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %8, align 8
  %81 = sub i64 %80, %79
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* %7, align 8
  br label %18

85:                                               ; preds = %53, %36, %18
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.buffer*, %struct.buffer** %6, align 8
  %88 = getelementptr inbounds %struct.buffer, %struct.buffer* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  ret void
}

declare dso_local i32 @display_log(%struct.display*, i32, i8*, ...) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
