; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_securetransport.c_load_cert.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_securetransport.c_load_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@kCFAllocatorDefault = common dso_local global i32 0, align 4
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @load_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_cert(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @import_pem(%struct.TYPE_7__* %12, i32 %16, i32** %5)
  store i32 %17, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %58

20:                                               ; preds = %1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @import_pem(%struct.TYPE_7__* %21, i32 %25, i32** %6)
  store i32 %26, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %58

29:                                               ; preds = %20
  %30 = load i32, i32* @kCFAllocatorDefault, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @CFArrayGetValueAtIndex(i32* %31, i32 0)
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @CFArrayGetValueAtIndex(i32* %34, i32 0)
  %36 = trunc i64 %35 to i32
  %37 = call i32* @SecIdentityCreate(i32 %30, i32 %33, i32 %36)
  store i32* %37, i32** %7, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %40, i32* %4, align 4
  br label %58

41:                                               ; preds = %29
  %42 = load i32, i32* @kCFAllocatorDefault, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = call i32* @CFArrayCreateMutableCopy(i32 %42, i32 0, i32* %43)
  store i32* %44, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = call i32 @AVERROR(i32 %47)
  store i32 %48, i32* %4, align 4
  br label %58

49:                                               ; preds = %41
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @CFArraySetValueAtIndex(i32* %50, i32 0, i32* %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @SSLSetCertificate(i32 %55, i32* %56)
  br label %58

58:                                               ; preds = %49, %46, %39, %28, %19
  %59 = load i32*, i32** %5, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @CFRelease(i32* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32*, i32** %6, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @CFRelease(i32* %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32*, i32** %8, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @CFRelease(i32* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32*, i32** %7, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @CFRelease(i32* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @import_pem(%struct.TYPE_7__*, i32, i32**) #1

declare dso_local i32* @SecIdentityCreate(i32, i32, i32) #1

declare dso_local i64 @CFArrayGetValueAtIndex(i32*, i32) #1

declare dso_local i32* @CFArrayCreateMutableCopy(i32, i32, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @CFArraySetValueAtIndex(i32*, i32, i32*) #1

declare dso_local i32 @SSLSetCertificate(i32, i32*) #1

declare dso_local i32 @CFRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
