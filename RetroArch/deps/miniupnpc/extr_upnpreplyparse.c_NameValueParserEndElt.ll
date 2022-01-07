; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_upnpreplyparse.c_NameValueParserEndElt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_upnpreplyparse.c_NameValueParserEndElt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NameValueParserData = type { i32, i64, i32*, %struct.NameValue*, i32 }
%struct.NameValue = type { i8*, i8*, %struct.NameValue* }

@.str = private unnamed_addr constant [15 x i8] c"NewPortListing\00", align 1
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @NameValueParserEndElt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NameValueParserEndElt(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.NameValueParserData*, align 8
  %8 = alloca %struct.NameValue*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.NameValueParserData*
  store %struct.NameValueParserData* %11, %struct.NameValueParserData** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.NameValueParserData*, %struct.NameValueParserData** %7, align 8
  %15 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %90

19:                                               ; preds = %3
  %20 = load %struct.NameValueParserData*, %struct.NameValueParserData** %7, align 8
  %21 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @strcmp(i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %83

25:                                               ; preds = %19
  %26 = load %struct.NameValueParserData*, %struct.NameValueParserData** %7, align 8
  %27 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  %29 = call i64 @malloc(i32 24)
  %30 = inttoptr i64 %29 to %struct.NameValue*
  store %struct.NameValue* %30, %struct.NameValue** %8, align 8
  %31 = load %struct.NameValue*, %struct.NameValue** %8, align 8
  %32 = icmp eq %struct.NameValue* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %90

34:                                               ; preds = %25
  %35 = load i32, i32* %9, align 4
  %36 = icmp sge i32 %35, 8
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 7, i32* %9, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load %struct.NameValue*, %struct.NameValue** %8, align 8
  %40 = getelementptr inbounds %struct.NameValue, %struct.NameValue* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.NameValueParserData*, %struct.NameValueParserData** %7, align 8
  %43 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @strncpy(i8* %41, i32 %44, i32 64)
  %46 = load %struct.NameValue*, %struct.NameValue** %8, align 8
  %47 = getelementptr inbounds %struct.NameValue, %struct.NameValue* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 63
  store i8 0, i8* %49, align 1
  %50 = load %struct.NameValueParserData*, %struct.NameValueParserData** %7, align 8
  %51 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %38
  %55 = load %struct.NameValue*, %struct.NameValue** %8, align 8
  %56 = getelementptr inbounds %struct.NameValue, %struct.NameValue* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.NameValueParserData*, %struct.NameValueParserData** %7, align 8
  %59 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @memcpy(i8* %57, i32* %60, i32 %61)
  %63 = load %struct.NameValue*, %struct.NameValue** %8, align 8
  %64 = getelementptr inbounds %struct.NameValue, %struct.NameValue* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8 0, i8* %68, align 1
  br label %74

69:                                               ; preds = %38
  %70 = load %struct.NameValue*, %struct.NameValue** %8, align 8
  %71 = getelementptr inbounds %struct.NameValue, %struct.NameValue* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  store i8 0, i8* %73, align 1
  br label %74

74:                                               ; preds = %69, %54
  %75 = load %struct.NameValueParserData*, %struct.NameValueParserData** %7, align 8
  %76 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %75, i32 0, i32 3
  %77 = load %struct.NameValue*, %struct.NameValue** %76, align 8
  %78 = load %struct.NameValue*, %struct.NameValue** %8, align 8
  %79 = getelementptr inbounds %struct.NameValue, %struct.NameValue* %78, i32 0, i32 2
  store %struct.NameValue* %77, %struct.NameValue** %79, align 8
  %80 = load %struct.NameValue*, %struct.NameValue** %8, align 8
  %81 = load %struct.NameValueParserData*, %struct.NameValueParserData** %7, align 8
  %82 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %81, i32 0, i32 3
  store %struct.NameValue* %80, %struct.NameValue** %82, align 8
  br label %83

83:                                               ; preds = %74, %19
  %84 = load %struct.NameValueParserData*, %struct.NameValueParserData** %7, align 8
  %85 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %84, i32 0, i32 2
  store i32* null, i32** %85, align 8
  %86 = load %struct.NameValueParserData*, %struct.NameValueParserData** %7, align 8
  %87 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load %struct.NameValueParserData*, %struct.NameValueParserData** %7, align 8
  %89 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %83, %33, %18
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
