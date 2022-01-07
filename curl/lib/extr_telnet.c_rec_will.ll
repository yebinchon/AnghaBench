; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_telnet.c_rec_will.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_telnet.c_rec_will.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TELNET = type { i32*, i32*, i32* }

@CURL_DO = common dso_local global i32 0, align 4
@CURL_DONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connectdata*, i32)* @rec_will to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rec_will(%struct.connectdata* %0, i32 %1) #0 {
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TELNET*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %7 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TELNET*
  store %struct.TELNET* %12, %struct.TELNET** %5, align 8
  %13 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %14 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %109 [
    i32 132, label %20
    i32 128, label %46
    i32 130, label %47
    i32 129, label %76
  ]

20:                                               ; preds = %2
  %21 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %22 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 128
  br i1 %28, label %29, label %40

29:                                               ; preds = %20
  %30 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %31 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 128, i32* %35, align 4
  %36 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %37 = load i32, i32* @CURL_DO, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @send_negotiation(%struct.connectdata* %36, i32 %37, i32 %38)
  br label %45

40:                                               ; preds = %20
  %41 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %42 = load i32, i32* @CURL_DONT, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @send_negotiation(%struct.connectdata* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %29
  br label %109

46:                                               ; preds = %2
  br label %109

47:                                               ; preds = %2
  %48 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %49 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %75 [
    i32 133, label %55
    i32 131, label %62
  ]

55:                                               ; preds = %47
  %56 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %57 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 132, i32* %61, align 4
  br label %75

62:                                               ; preds = %47
  %63 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %64 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 128, i32* %68, align 4
  %69 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %70 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 133, i32* %74, align 4
  br label %75

75:                                               ; preds = %47, %62, %55
  br label %109

76:                                               ; preds = %2
  %77 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %78 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %108 [
    i32 133, label %84
    i32 131, label %91
  ]

84:                                               ; preds = %76
  %85 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %86 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 128, i32* %90, align 4
  br label %108

91:                                               ; preds = %76
  %92 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %93 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 130, i32* %97, align 4
  %98 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %99 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 133, i32* %103, align 4
  %104 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %105 = load i32, i32* @CURL_DONT, align 4
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @send_negotiation(%struct.connectdata* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %76, %91, %84
  br label %109

109:                                              ; preds = %2, %108, %75, %46, %45
  ret void
}

declare dso_local i32 @send_negotiation(%struct.connectdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
