; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/tests/extr_movenc.c_close_out.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/tests/extr_movenc.c_close_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@md5 = common dso_local global i32 0, align 4
@hash = common dso_local global i32* null, align 8
@HASH_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" %d %s\0A\00", align 1
@out_size = common dso_local global i32 0, align 4
@cur_name = common dso_local global i8* null, align 8
@out = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @close_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_out() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @md5, align 4
  %3 = load i32*, i32** @hash, align 8
  %4 = call i32 @av_md5_final(i32 %2, i32* %3)
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %16, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @HASH_SIZE, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = load i32*, i32** @hash, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %9
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %5

19:                                               ; preds = %5
  %20 = load i32, i32* @out_size, align 4
  %21 = load i8*, i8** @cur_name, align 8
  %22 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %20, i8* %21)
  %23 = load i32*, i32** @out, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32*, i32** @out, align 8
  %27 = call i32 @fclose(i32* %26)
  br label %28

28:                                               ; preds = %25, %19
  store i32* null, i32** @out, align 8
  ret void
}

declare dso_local i32 @av_md5_final(i32, i32*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
