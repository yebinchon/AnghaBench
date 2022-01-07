; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_movie.c_ReadHeader.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_movie.c_ReadHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@Movie = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@headersize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @ReadHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReadHeader(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @SEEK_SET, align 4
  %6 = call i32 @fseek(i32* %4, i32 0, i32 %5)
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @SEEK_SET, align 4
  %9 = call i32 @fseek(i32* %7, i32 172, i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @fread(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Movie, i32 0, i32 0), i32 4, i32 1, i32* %10)
  store i64 %11, i64* %3, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @headersize, align 4
  %14 = load i32, i32* @SEEK_SET, align 4
  %15 = call i32 @fseek(i32* %12, i32 %13, i32 %14)
  ret void
}

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @fread(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
