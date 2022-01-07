; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sndmac.c_SNDMacMixAudio.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sndmac.c_SNDMacMixAudio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i8* }

@mutex = common dso_local global i32 0, align 4
@muted = common dso_local global i64 0, align 8
@read_pos = common dso_local global i64 0, align 8
@write_pos = common dso_local global i64 0, align 8
@buffer = common dso_local global i64 0, align 8
@BUFFER_LEN = common dso_local global i32 0, align 4
@noErr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i64, i64, %struct.TYPE_5__*)* @SNDMacMixAudio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SNDMacMixAudio(i8* %0, i32* %1, i32* %2, i64 %3, i64 %4, %struct.TYPE_5__* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %12, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %13, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %14, align 8
  %27 = call i32 @pthread_mutex_lock(i32* @mutex)
  %28 = load i64, i64* @muted, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %6
  %31 = load i64, i64* @read_pos, align 8
  %32 = load i64, i64* %13, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i64, i64* @write_pos, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i64, i64* @write_pos, align 8
  %38 = load i64, i64* @read_pos, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36, %6
  %41 = load i8*, i8** %14, align 8
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @memset(i8* %41, i32 0, i64 %42)
  br label %59

44:                                               ; preds = %36, %30
  %45 = load i8*, i8** %14, align 8
  %46 = load i64, i64* @buffer, align 8
  %47 = load i64, i64* @read_pos, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @memcpy(i8* %45, i64 %48, i64 %49)
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* @read_pos, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* @read_pos, align 8
  %54 = load i32, i32* @BUFFER_LEN, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* @read_pos, align 8
  %58 = and i64 %57, %56
  store i64 %58, i64* @read_pos, align 8
  br label %59

59:                                               ; preds = %44, %40
  %60 = call i32 @pthread_mutex_unlock(i32* @mutex)
  %61 = load i32, i32* @noErr, align 4
  ret i32 %61
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
