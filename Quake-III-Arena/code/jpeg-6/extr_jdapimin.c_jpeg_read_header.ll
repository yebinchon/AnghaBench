; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jdapimin.c_jpeg_read_header.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jdapimin.c_jpeg_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@DSTATE_START = common dso_local global i64 0, align 8
@DSTATE_INHEADER = common dso_local global i64 0, align 8
@JERR_BAD_STATE = common dso_local global i32 0, align 4
@JPEG_HEADER_OK = common dso_local global i32 0, align 4
@JERR_NO_IMAGE = common dso_local global i32 0, align 4
@JPEG_HEADER_TABLES_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jpeg_read_header(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DSTATE_START, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DSTATE_INHEADER, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = load i32, i32* @JERR_BAD_STATE, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @ERREXIT1(%struct.TYPE_6__* %18, i32 %19, i64 %22)
  br label %24

24:                                               ; preds = %17, %11, %2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = call i32 @jpeg_consume_input(%struct.TYPE_6__* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %43 [
    i32 129, label %28
    i32 130, label %30
    i32 128, label %42
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* @JPEG_HEADER_OK, align 4
  store i32 %29, i32* %5, align 4
  br label %43

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = load i32, i32* @JERR_NO_IMAGE, align 4
  %36 = call i32 @ERREXIT(%struct.TYPE_6__* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %30
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = ptrtoint %struct.TYPE_6__* %38 to i32
  %40 = call i32 @jpeg_abort(i32 %39)
  %41 = load i32, i32* @JPEG_HEADER_TABLES_ONLY, align 4
  store i32 %41, i32* %5, align 4
  br label %43

42:                                               ; preds = %24
  br label %43

43:                                               ; preds = %24, %42, %37, %28
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @ERREXIT1(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i32 @jpeg_consume_input(%struct.TYPE_6__*) #1

declare dso_local i32 @ERREXIT(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @jpeg_abort(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
