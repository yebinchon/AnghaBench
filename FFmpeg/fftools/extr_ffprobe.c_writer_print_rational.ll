; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_writer_print_rational.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_writer_print_rational.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@AV_BPRINT_SIZE_AUTOMATIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%d%c%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64, i8)* @writer_print_rational to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writer_print_rational(i32* %0, i8* %1, i64 %2, i8 signext %3) #0 {
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.TYPE_7__, align 4
  %10 = bitcast %struct.TYPE_6__* %5 to i64*
  store i64 %2, i64* %10, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8 %3, i8* %8, align 1
  %11 = load i32, i32* @AV_BPRINT_SIZE_AUTOMATIC, align 4
  %12 = call i32 @av_bprint_init(%struct.TYPE_7__* %9, i32 0, i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i8, i8* %8, align 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @av_bprintf(%struct.TYPE_7__* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %14, i8 signext %15, i32 %17)
  %19 = load i32*, i32** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @writer_print_string(i32* %19, i8* %20, i32 %22, i32 0)
  ret void
}

declare dso_local i32 @av_bprint_init(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @av_bprintf(%struct.TYPE_7__*, i8*, i32, i8 signext, i32) #1

declare dso_local i32 @writer_print_string(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
