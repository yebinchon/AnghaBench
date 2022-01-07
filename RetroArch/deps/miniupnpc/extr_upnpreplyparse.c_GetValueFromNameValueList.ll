; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_upnpreplyparse.c_GetValueFromNameValueList.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_upnpreplyparse.c_GetValueFromNameValueList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NameValueParserData = type { %struct.NameValue* }
%struct.NameValue = type { i8*, i32, %struct.NameValue* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GetValueFromNameValueList(%struct.NameValueParserData* %0, i8* %1) #0 {
  %3 = alloca %struct.NameValueParserData*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.NameValue*, align 8
  %6 = alloca i8*, align 8
  store %struct.NameValueParserData* %0, %struct.NameValueParserData** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %6, align 8
  %7 = load %struct.NameValueParserData*, %struct.NameValueParserData** %3, align 8
  %8 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %7, i32 0, i32 0
  %9 = load %struct.NameValue*, %struct.NameValue** %8, align 8
  store %struct.NameValue* %9, %struct.NameValue** %5, align 8
  br label %10

10:                                               ; preds = %30, %2
  %11 = load %struct.NameValue*, %struct.NameValue** %5, align 8
  %12 = icmp ne %struct.NameValue* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i1 [ false, %10 ], [ %15, %13 ]
  br i1 %17, label %18, label %34

18:                                               ; preds = %16
  %19 = load %struct.NameValue*, %struct.NameValue** %5, align 8
  %20 = getelementptr inbounds %struct.NameValue, %struct.NameValue* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @strcmp(i32 %21, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.NameValue*, %struct.NameValue** %5, align 8
  %27 = getelementptr inbounds %struct.NameValue, %struct.NameValue* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %6, align 8
  br label %29

29:                                               ; preds = %25, %18
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.NameValue*, %struct.NameValue** %5, align 8
  %32 = getelementptr inbounds %struct.NameValue, %struct.NameValue* %31, i32 0, i32 2
  %33 = load %struct.NameValue*, %struct.NameValue** %32, align 8
  store %struct.NameValue* %33, %struct.NameValue** %5, align 8
  br label %10

34:                                               ; preds = %16
  %35 = load i8*, i8** %6, align 8
  ret i8* %35
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
