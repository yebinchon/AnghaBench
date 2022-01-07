; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http2_request/components/sh2lib/extr_sh2lib.c_sh2lib_do_put.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http2_request/components/sh2lib/extr_sh2lib.c_sh2lib_do_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh2lib_handle = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c":method\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PUT\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c":scheme\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c":authority\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c":path\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sh2lib_do_put(%struct.sh2lib_handle* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sh2lib_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  store %struct.sh2lib_handle* %0, %struct.sh2lib_handle** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %11 = call i32 @SH2LIB_MAKE_NV(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = call i32 @SH2LIB_MAKE_NV(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load %struct.sh2lib_handle*, %struct.sh2lib_handle** %5, align 8
  %16 = getelementptr inbounds %struct.sh2lib_handle, %struct.sh2lib_handle* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @SH2LIB_MAKE_NV(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %17)
  store i32 %18, i32* %14, align 4
  %19 = getelementptr inbounds i32, i32* %14, i64 1
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @SH2LIB_MAKE_NV(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %20)
  store i32 %21, i32* %19, align 4
  %22 = load %struct.sh2lib_handle*, %struct.sh2lib_handle** %5, align 8
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @sh2lib_do_putpost_with_nv(%struct.sh2lib_handle* %22, i32* %23, i32 4, i32 %24, i32 %25)
  ret i32 %26
}

declare dso_local i32 @SH2LIB_MAKE_NV(i8*, i8*) #1

declare dso_local i32 @sh2lib_do_putpost_with_nv(%struct.sh2lib_handle*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
