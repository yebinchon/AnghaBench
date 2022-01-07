; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/psaux/extr_afmparse.c_afm_stream_read_one.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/psaux/extr_afmparse.c_afm_stream_read_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@AFM_STREAM_STATUS_EOL = common dso_local global i32 0, align 4
@AFM_STREAM_STATUS_EOC = common dso_local global i32 0, align 4
@AFM_STREAM_STATUS_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*)* @afm_stream_read_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @afm_stream_read_one(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = call i32 @afm_stream_skip_spaces(%struct.TYPE_6__* %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = call i64 @AFM_STATUS_EOC(%struct.TYPE_6__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %51

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = call i8* @AFM_STREAM_KEY_BEGIN(%struct.TYPE_6__* %13)
  store i8* %14, i8** %4, align 8
  br label %15

15:                                               ; preds = %12, %48
  %16 = call i32 (...) @AFM_GETC()
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @AFM_IS_SPACE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %49

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @AFM_IS_NEWLINE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @AFM_STREAM_STATUS_EOL, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %49

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @AFM_IS_SEP(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @AFM_STREAM_STATUS_EOC, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %49

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @AFM_IS_EOF(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* @AFM_STREAM_STATUS_EOF, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %49

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  br label %15

49:                                               ; preds = %41, %33, %25, %20
  %50 = load i8*, i8** %4, align 8
  store i8* %50, i8** %2, align 8
  br label %51

51:                                               ; preds = %49, %11
  %52 = load i8*, i8** %2, align 8
  ret i8* %52
}

declare dso_local i32 @afm_stream_skip_spaces(%struct.TYPE_6__*) #1

declare dso_local i64 @AFM_STATUS_EOC(%struct.TYPE_6__*) #1

declare dso_local i8* @AFM_STREAM_KEY_BEGIN(%struct.TYPE_6__*) #1

declare dso_local i32 @AFM_GETC(...) #1

declare dso_local i64 @AFM_IS_SPACE(i32) #1

declare dso_local i64 @AFM_IS_NEWLINE(i32) #1

declare dso_local i64 @AFM_IS_SEP(i32) #1

declare dso_local i64 @AFM_IS_EOF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
