; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_upnpreplyparse.c_NameValueParserGetData.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_upnpreplyparse.c_NameValueParserGetData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NameValueParserData = type { i8*, i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"NewPortListing\00", align 1
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @NameValueParserGetData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NameValueParserGetData(i8* %0, i8* %1, i32 %2) #0 {
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
  %11 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @strcmp(i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i64 @malloc(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.NameValueParserData*, %struct.NameValueParserData** %7, align 8
  %21 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.NameValueParserData*, %struct.NameValueParserData** %7, align 8
  %23 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  br label %50

27:                                               ; preds = %15
  %28 = load %struct.NameValueParserData*, %struct.NameValueParserData** %7, align 8
  %29 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @memcpy(i8* %30, i8* %31, i32 %32)
  %34 = load %struct.NameValueParserData*, %struct.NameValueParserData** %7, align 8
  %35 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 0, i8* %39, align 1
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.NameValueParserData*, %struct.NameValueParserData** %7, align 8
  %42 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  br label %50

43:                                               ; preds = %3
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.NameValueParserData*, %struct.NameValueParserData** %7, align 8
  %46 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.NameValueParserData*, %struct.NameValueParserData** %7, align 8
  %49 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %26, %43, %27
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
