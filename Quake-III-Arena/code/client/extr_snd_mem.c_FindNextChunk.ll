; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_mem.c_FindNextChunk.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_mem.c_FindNextChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_chunk = common dso_local global i32* null, align 8
@data_p = common dso_local global i32* null, align 8
@iff_end = common dso_local global i32* null, align 8
@iff_chunk_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @FindNextChunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FindNextChunk(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %1, %32
  %4 = load i32*, i32** @last_chunk, align 8
  store i32* %4, i32** @data_p, align 8
  %5 = load i32*, i32** @data_p, align 8
  %6 = load i32*, i32** @iff_end, align 8
  %7 = icmp uge i32* %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  store i32* null, i32** @data_p, align 8
  br label %33

9:                                                ; preds = %3
  %10 = load i32*, i32** @data_p, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 4
  store i32* %11, i32** @data_p, align 8
  %12 = call i32 (...) @GetLittleLong()
  store i32 %12, i32* @iff_chunk_len, align 4
  %13 = load i32, i32* @iff_chunk_len, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32* null, i32** @data_p, align 8
  br label %33

16:                                               ; preds = %9
  %17 = load i32*, i32** @data_p, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 -8
  store i32* %18, i32** @data_p, align 8
  %19 = load i32*, i32** @data_p, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 8
  %21 = load i32, i32* @iff_chunk_len, align 4
  %22 = add nsw i32 %21, 1
  %23 = and i32 %22, -2
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  store i32* %25, i32** @last_chunk, align 8
  %26 = load i32*, i32** @data_p, align 8
  %27 = bitcast i32* %26 to i8*
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 @strncmp(i8* %27, i8* %28, i32 4)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %16
  br label %33

32:                                               ; preds = %16
  br label %3

33:                                               ; preds = %31, %15, %8
  ret void
}

declare dso_local i32 @GetLittleLong(...) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
