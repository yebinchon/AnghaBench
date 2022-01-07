; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ccaption_dec.c_handle_textattr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ccaption_dec.c_handle_textattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i8* }
%struct.Screen = type { i32 }

@pac2_attribs = common dso_local global i8*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32)* @handle_textattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_textattr(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Screen*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = sub nsw i32 %9, 32
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = call %struct.Screen* @get_writing_screen(%struct.TYPE_5__* %11)
  store %struct.Screen* %12, %struct.Screen** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp sge i32 %13, 32
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %45

16:                                               ; preds = %3
  %17 = load i8***, i8**** @pac2_attribs, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8**, i8*** %17, i64 %19
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i8***, i8**** @pac2_attribs, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8**, i8*** %26, i64 %28
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.Screen*, %struct.Screen** %8, align 8
  %36 = getelementptr inbounds %struct.Screen, %struct.Screen* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @SET_FLAG(i32 %37, i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = load %struct.Screen*, %struct.Screen** %8, align 8
  %44 = call i32 @write_char(%struct.TYPE_5__* %42, %struct.Screen* %43, i8 signext 32)
  br label %45

45:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.Screen* @get_writing_screen(%struct.TYPE_5__*) #1

declare dso_local i32 @SET_FLAG(i32, i32) #1

declare dso_local i32 @write_char(%struct.TYPE_5__*, %struct.Screen*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
