; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_pad.c___pad_typeandstatuscallback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_pad.c___pad_typeandstatuscallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__pad_resettingchan = common dso_local global i64 0, align 8
@__pad_recalibratebits = common dso_local global i32 0, align 4
@__pad_type = common dso_local global i32* null, align 8
@SI_TYPE_MASK = common dso_local global i32 0, align 4
@SI_TYPE_GC = common dso_local global i32 0, align 4
@SI_GC_STANDARD = common dso_local global i32 0, align 4
@__pad_spec = common dso_local global i32 0, align 4
@SI_GC_WIRELESS = common dso_local global i32 0, align 4
@SI_WIRELESS_IR = common dso_local global i32 0, align 4
@__pad_cmdcalibrate = common dso_local global i32 0, align 4
@__pad_origin = common dso_local global i32* null, align 8
@__pad_origincallback = common dso_local global i32 0, align 4
@__pad_cmdreadorigin = common dso_local global i32 0, align 4
@SI_WIRELESS_FIX_ID = common dso_local global i32 0, align 4
@SI_WIRELESS_CONT_MASK = common dso_local global i32 0, align 4
@SI_WIRELESS_LITE = common dso_local global i32 0, align 4
@SI_WIRELESS_RECEIVED = common dso_local global i32 0, align 4
@__pad_cmdprobedevice = common dso_local global i32* null, align 8
@__pad_probecallback = common dso_local global i32 0, align 4
@__pad_pendingbits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @__pad_typeandstatuscallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pad_typeandstatuscallback(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load i64, i64* @__pad_resettingchan, align 8
  %9 = call i32 @PAD_ENABLEDMASK(i64 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @__pad_recalibratebits, align 4
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* @__pad_recalibratebits, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* @__pad_recalibratebits, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 15
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 (...) @__pad_doreset()
  br label %127

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, -256
  %25 = load i32*, i32** @__pad_type, align 8
  %26 = load i64, i64* @__pad_resettingchan, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SI_TYPE_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @SI_TYPE_GC, align 4
  %32 = sub nsw i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @SI_GC_STANDARD, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34, %22
  %40 = call i32 (...) @__pad_doreset()
  br label %127

41:                                               ; preds = %34
  %42 = load i32, i32* @__pad_spec, align 4
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i64, i64* @__pad_resettingchan, align 8
  %46 = call i32 @__pad_enable(i64 %45)
  %47 = call i32 (...) @__pad_doreset()
  br label %127

48:                                               ; preds = %41
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @SI_GC_WIRELESS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @SI_WIRELESS_IR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %53, %48
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i64, i64* @__pad_resettingchan, align 8
  %63 = load i32*, i32** @__pad_origin, align 8
  %64 = load i64, i64* @__pad_resettingchan, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @__pad_origincallback, align 4
  %68 = call i32 @SI_Transfer(i64 %62, i32* @__pad_cmdcalibrate, i32 3, i32 %66, i32 10, i32 %67, i32 0)
  store i32 %68, i32* %7, align 4
  br label %77

69:                                               ; preds = %58
  %70 = load i64, i64* @__pad_resettingchan, align 8
  %71 = load i32*, i32** @__pad_origin, align 8
  %72 = load i64, i64* @__pad_resettingchan, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @__pad_origincallback, align 4
  %76 = call i32 @SI_Transfer(i64 %70, i32* @__pad_cmdreadorigin, i32 1, i32 %74, i32 10, i32 %75, i32 0)
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %69, %61
  br label %119

78:                                               ; preds = %53
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @SI_WIRELESS_FIX_ID, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %118

83:                                               ; preds = %78
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @SI_WIRELESS_CONT_MASK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %118, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @SI_WIRELESS_LITE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %118, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @SI_WIRELESS_RECEIVED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load i64, i64* @__pad_resettingchan, align 8
  %100 = load i32*, i32** @__pad_origin, align 8
  %101 = load i64, i64* @__pad_resettingchan, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @__pad_origincallback, align 4
  %105 = call i32 @SI_Transfer(i64 %99, i32* @__pad_cmdreadorigin, i32 1, i32 %103, i32 10, i32 %104, i32 0)
  store i32 %105, i32* %7, align 4
  br label %117

106:                                              ; preds = %93
  %107 = load i64, i64* @__pad_resettingchan, align 8
  %108 = load i32*, i32** @__pad_cmdprobedevice, align 8
  %109 = load i64, i64* @__pad_resettingchan, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32*, i32** @__pad_origin, align 8
  %112 = load i64, i64* @__pad_resettingchan, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @__pad_probecallback, align 4
  %116 = call i32 @SI_Transfer(i64 %107, i32* %110, i32 3, i32 %114, i32 8, i32 %115, i32 0)
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %106, %98
  br label %118

118:                                              ; preds = %117, %88, %83, %78
  br label %119

119:                                              ; preds = %118, %77
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @__pad_pendingbits, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* @__pad_pendingbits, align 4
  %126 = call i32 (...) @__pad_doreset()
  br label %127

127:                                              ; preds = %20, %39, %44, %122, %119
  ret void
}

declare dso_local i32 @PAD_ENABLEDMASK(i64) #1

declare dso_local i32 @__pad_doreset(...) #1

declare dso_local i32 @__pad_enable(i64) #1

declare dso_local i32 @SI_Transfer(i64, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
