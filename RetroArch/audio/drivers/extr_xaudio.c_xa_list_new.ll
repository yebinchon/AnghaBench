; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_xaudio.c_xa_list_new.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_xaudio.c_xa_list_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.string_list_elem_attr = type { i32 }
%struct.string_list = type opaque
%struct.TYPE_3__ = type { i32 }

@XAUDIO2_DEFAULT_PROCESSOR = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @xa_list_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xa_list_new(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.string_list_elem_attr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.string_list*, align 8
  %9 = alloca %struct.TYPE_3__, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %11 = call i8* (...) @string_list_new()
  %12 = bitcast i8* %11 to %struct.string_list*
  store %struct.string_list* %12, %struct.string_list** %8, align 8
  %13 = load %struct.string_list*, %struct.string_list** %8, align 8
  %14 = icmp ne %struct.string_list* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %61

16:                                               ; preds = %1
  %17 = bitcast %union.string_list_elem_attr* %5 to i32*
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* @XAUDIO2_DEFAULT_PROCESSOR, align 4
  %19 = call i32 @XAudio2Create(i32** %7, i32 0, i32 %18)
  %20 = call i64 @FAILED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i8* null, i8** %2, align 8
  br label %61

23:                                               ; preds = %16
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @IXAudio2_GetDeviceCount(i32* %24, i32* %6)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %53, %23
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @IXAudio2_GetDeviceDetails(i32* %31, i32 %32, %struct.TYPE_3__* %9)
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @utf16_to_utf8_string_alloc(i32 %38)
  store i8* %39, i8** %10, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.string_list*, %struct.string_list** %8, align 8
  %44 = bitcast %struct.string_list* %43 to i8*
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @string_list_append(i8* %44, i8* %45, i32 %47)
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @free(i8* %49)
  br label %51

51:                                               ; preds = %42, %36
  br label %52

52:                                               ; preds = %51, %30
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %26

56:                                               ; preds = %26
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @IXAudio2_Release(i32* %57)
  %59 = load %struct.string_list*, %struct.string_list** %8, align 8
  %60 = bitcast %struct.string_list* %59 to i8*
  store i8* %60, i8** %2, align 8
  br label %61

61:                                               ; preds = %56, %22, %15
  %62 = load i8*, i8** %2, align 8
  ret i8* %62
}

declare dso_local i8* @string_list_new(...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @XAudio2Create(i32**, i32, i32) #1

declare dso_local i32 @IXAudio2_GetDeviceCount(i32*, i32*) #1

declare dso_local i64 @IXAudio2_GetDeviceDetails(i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i8* @utf16_to_utf8_string_alloc(i32) #1

declare dso_local i32 @string_list_append(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @IXAudio2_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
