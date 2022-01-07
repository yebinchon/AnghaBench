; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_upnpreplyparse.c_NameValueParserStartElt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_upnpreplyparse.c_NameValueParserStartElt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NameValueParserData = type { i32, i8*, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @NameValueParserStartElt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NameValueParserStartElt(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.NameValueParserData*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.NameValueParserData*
  store %struct.NameValueParserData* %9, %struct.NameValueParserData** %7, align 8
  %10 = load %struct.NameValueParserData*, %struct.NameValueParserData** %7, align 8
  %11 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 63
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 63, i32* %6, align 4
  br label %15

15:                                               ; preds = %14, %3
  %16 = load %struct.NameValueParserData*, %struct.NameValueParserData** %7, align 8
  %17 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @memcpy(i8* %18, i8* %19, i32 %20)
  %22 = load %struct.NameValueParserData*, %struct.NameValueParserData** %7, align 8
  %23 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  store i8 0, i8* %27, align 1
  %28 = load %struct.NameValueParserData*, %struct.NameValueParserData** %7, align 8
  %29 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load %struct.NameValueParserData*, %struct.NameValueParserData** %7, align 8
  %31 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
