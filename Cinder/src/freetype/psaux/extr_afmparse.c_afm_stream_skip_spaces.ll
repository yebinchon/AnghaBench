; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/psaux/extr_afmparse.c_afm_stream_skip_spaces.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/psaux/extr_afmparse.c_afm_stream_skip_spaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@AFM_STREAM_STATUS_EOL = common dso_local global i32 0, align 4
@AFM_STREAM_STATUS_EOC = common dso_local global i32 0, align 4
@AFM_STREAM_STATUS_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @afm_stream_skip_spaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afm_stream_skip_spaces(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = call i64 @AFM_STATUS_EOC(%struct.TYPE_4__* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 59, i32* %2, align 4
  br label %45

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %16
  %11 = call i32 (...) @AFM_GETC()
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @AFM_IS_SPACE(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %17

16:                                               ; preds = %10
  br label %10

17:                                               ; preds = %15
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @AFM_IS_NEWLINE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @AFM_STREAM_STATUS_EOL, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %43

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @AFM_IS_SEP(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @AFM_STREAM_STATUS_EOC, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %42

33:                                               ; preds = %25
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @AFM_IS_EOF(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @AFM_STREAM_STATUS_EOF, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %41, %29
  br label %43

43:                                               ; preds = %42, %21
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %8
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @AFM_STATUS_EOC(%struct.TYPE_4__*) #1

declare dso_local i32 @AFM_GETC(...) #1

declare dso_local i32 @AFM_IS_SPACE(i32) #1

declare dso_local i64 @AFM_IS_NEWLINE(i32) #1

declare dso_local i64 @AFM_IS_SEP(i32) #1

declare dso_local i64 @AFM_IS_EOF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
