; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngimage.c_buffer_write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngimage.c_buffer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i32 }
%struct.buffer = type { i64, %struct.buffer_list* }
%struct.buffer_list = type { i64, %struct.buffer_list* }

@APP_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"out of memory saving file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display*, %struct.buffer*, i64, i64)* @buffer_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_write(%struct.display* %0, %struct.buffer* %1, i64 %2, i64 %3) #0 {
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
  %13 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 1
  %14 = load %struct.buffer_list*, %struct.buffer_list** %13, align 8
  store %struct.buffer_list* %14, %struct.buffer_list** %9, align 8
  %15 = load %struct.buffer*, %struct.buffer** %6, align 8
  %16 = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  br label %18

18:                                               ; preds = %55, %4
  %19 = load i64, i64* %8, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %73

21:                                               ; preds = %18
  %22 = load i64, i64* %10, align 8
  %23 = icmp uge i64 %22, 8
  br i1 %23, label %24, label %47

24:                                               ; preds = %21
  %25 = load %struct.buffer_list*, %struct.buffer_list** %9, align 8
  %26 = getelementptr inbounds %struct.buffer_list, %struct.buffer_list* %25, i32 0, i32 1
  %27 = load %struct.buffer_list*, %struct.buffer_list** %26, align 8
  %28 = icmp eq %struct.buffer_list* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.buffer_list*, %struct.buffer_list** %9, align 8
  %31 = call %struct.buffer_list* @buffer_extend(%struct.buffer_list* %30)
  store %struct.buffer_list* %31, %struct.buffer_list** %9, align 8
  %32 = load %struct.buffer_list*, %struct.buffer_list** %9, align 8
  %33 = icmp eq %struct.buffer_list* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.display*, %struct.display** %5, align 8
  %36 = load i32, i32* @APP_ERROR, align 4
  %37 = call i32 @display_log(%struct.display* %35, i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %29
  br label %43

39:                                               ; preds = %24
  %40 = load %struct.buffer_list*, %struct.buffer_list** %9, align 8
  %41 = getelementptr inbounds %struct.buffer_list, %struct.buffer_list* %40, i32 0, i32 1
  %42 = load %struct.buffer_list*, %struct.buffer_list** %41, align 8
  store %struct.buffer_list* %42, %struct.buffer_list** %9, align 8
  br label %43

43:                                               ; preds = %39, %38
  %44 = load %struct.buffer_list*, %struct.buffer_list** %9, align 8
  %45 = load %struct.buffer*, %struct.buffer** %6, align 8
  %46 = getelementptr inbounds %struct.buffer, %struct.buffer* %45, i32 0, i32 1
  store %struct.buffer_list* %44, %struct.buffer_list** %46, align 8
  store i64 0, i64* %10, align 8
  br label %47

47:                                               ; preds = %43, %21
  %48 = load i64, i64* %10, align 8
  %49 = sub i64 8, %48
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i64, i64* %8, align 8
  store i64 %54, i64* %11, align 8
  br label %55

55:                                               ; preds = %53, %47
  %56 = load %struct.buffer_list*, %struct.buffer_list** %9, align 8
  %57 = getelementptr inbounds %struct.buffer_list, %struct.buffer_list* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = add i64 %58, %59
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @memcpy(i64 %60, i64 %61, i64 %62)
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %8, align 8
  %69 = sub i64 %68, %67
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %7, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %7, align 8
  br label %18

73:                                               ; preds = %18
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.buffer*, %struct.buffer** %6, align 8
  %76 = getelementptr inbounds %struct.buffer, %struct.buffer* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  ret void
}

declare dso_local %struct.buffer_list* @buffer_extend(%struct.buffer_list*) #1

declare dso_local i32 @display_log(%struct.display*, i32, i8*) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
