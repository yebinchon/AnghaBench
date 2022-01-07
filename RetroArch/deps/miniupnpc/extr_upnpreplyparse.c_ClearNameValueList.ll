; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_upnpreplyparse.c_ClearNameValueList.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_upnpreplyparse.c_ClearNameValueList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NameValueParserData = type { %struct.NameValue*, i64, %struct.NameValue* }
%struct.NameValue = type { %struct.NameValue* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClearNameValueList(%struct.NameValueParserData* %0) #0 {
  %2 = alloca %struct.NameValueParserData*, align 8
  %3 = alloca %struct.NameValue*, align 8
  store %struct.NameValueParserData* %0, %struct.NameValueParserData** %2, align 8
  %4 = load %struct.NameValueParserData*, %struct.NameValueParserData** %2, align 8
  %5 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %4, i32 0, i32 2
  %6 = load %struct.NameValue*, %struct.NameValue** %5, align 8
  %7 = icmp ne %struct.NameValue* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.NameValueParserData*, %struct.NameValueParserData** %2, align 8
  %10 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %9, i32 0, i32 2
  %11 = load %struct.NameValue*, %struct.NameValue** %10, align 8
  %12 = call i32 @free(%struct.NameValue* %11)
  %13 = load %struct.NameValueParserData*, %struct.NameValueParserData** %2, align 8
  %14 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %13, i32 0, i32 2
  store %struct.NameValue* null, %struct.NameValue** %14, align 8
  %15 = load %struct.NameValueParserData*, %struct.NameValueParserData** %2, align 8
  %16 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %8, %1
  br label %18

18:                                               ; preds = %23, %17
  %19 = load %struct.NameValueParserData*, %struct.NameValueParserData** %2, align 8
  %20 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %19, i32 0, i32 0
  %21 = load %struct.NameValue*, %struct.NameValue** %20, align 8
  store %struct.NameValue* %21, %struct.NameValue** %3, align 8
  %22 = icmp ne %struct.NameValue* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.NameValue*, %struct.NameValue** %3, align 8
  %25 = getelementptr inbounds %struct.NameValue, %struct.NameValue* %24, i32 0, i32 0
  %26 = load %struct.NameValue*, %struct.NameValue** %25, align 8
  %27 = load %struct.NameValueParserData*, %struct.NameValueParserData** %2, align 8
  %28 = getelementptr inbounds %struct.NameValueParserData, %struct.NameValueParserData* %27, i32 0, i32 0
  store %struct.NameValue* %26, %struct.NameValue** %28, align 8
  %29 = load %struct.NameValue*, %struct.NameValue** %3, align 8
  %30 = call i32 @free(%struct.NameValue* %29)
  br label %18

31:                                               ; preds = %18
  ret void
}

declare dso_local i32 @free(%struct.NameValue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
