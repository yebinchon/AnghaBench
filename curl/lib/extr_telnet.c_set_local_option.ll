; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_telnet.c_set_local_option.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_telnet.c_set_local_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TELNET = type { i32*, i32* }

@CURL_WILL = common dso_local global i32 0, align 4
@CURL_WONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connectdata*, i32, i32)* @set_local_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_local_option(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TELNET*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %9 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TELNET*
  store %struct.TELNET* %14, %struct.TELNET** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 128
  br i1 %16, label %17, label %72

17:                                               ; preds = %3
  %18 = load %struct.TELNET*, %struct.TELNET** %7, align 8
  %19 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %71 [
    i32 132, label %25
    i32 128, label %36
    i32 130, label %37
    i32 129, label %54
  ]

25:                                               ; preds = %17
  %26 = load %struct.TELNET*, %struct.TELNET** %7, align 8
  %27 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 129, i32* %31, align 4
  %32 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %33 = load i32, i32* @CURL_WILL, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @send_negotiation(%struct.connectdata* %32, i32 %33, i32 %34)
  br label %71

36:                                               ; preds = %17
  br label %71

37:                                               ; preds = %17
  %38 = load %struct.TELNET*, %struct.TELNET** %7, align 8
  %39 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %53 [
    i32 133, label %45
    i32 131, label %52
  ]

45:                                               ; preds = %37
  %46 = load %struct.TELNET*, %struct.TELNET** %7, align 8
  %47 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 131, i32* %51, align 4
  br label %53

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %37, %52, %45
  br label %71

54:                                               ; preds = %17
  %55 = load %struct.TELNET*, %struct.TELNET** %7, align 8
  %56 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %70 [
    i32 133, label %62
    i32 131, label %63
  ]

62:                                               ; preds = %54
  br label %70

63:                                               ; preds = %54
  %64 = load %struct.TELNET*, %struct.TELNET** %7, align 8
  %65 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 133, i32* %69, align 4
  br label %70

70:                                               ; preds = %54, %63, %62
  br label %71

71:                                               ; preds = %17, %70, %53, %36, %25
  br label %127

72:                                               ; preds = %3
  %73 = load %struct.TELNET*, %struct.TELNET** %7, align 8
  %74 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %126 [
    i32 132, label %80
    i32 128, label %81
    i32 130, label %92
    i32 129, label %109
  ]

80:                                               ; preds = %72
  br label %126

81:                                               ; preds = %72
  %82 = load %struct.TELNET*, %struct.TELNET** %7, align 8
  %83 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 130, i32* %87, align 4
  %88 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %89 = load i32, i32* @CURL_WONT, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @send_negotiation(%struct.connectdata* %88, i32 %89, i32 %90)
  br label %126

92:                                               ; preds = %72
  %93 = load %struct.TELNET*, %struct.TELNET** %7, align 8
  %94 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  switch i32 %99, label %108 [
    i32 133, label %100
    i32 131, label %101
  ]

100:                                              ; preds = %92
  br label %108

101:                                              ; preds = %92
  %102 = load %struct.TELNET*, %struct.TELNET** %7, align 8
  %103 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 133, i32* %107, align 4
  br label %108

108:                                              ; preds = %92, %101, %100
  br label %126

109:                                              ; preds = %72
  %110 = load %struct.TELNET*, %struct.TELNET** %7, align 8
  %111 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  switch i32 %116, label %125 [
    i32 133, label %117
    i32 131, label %124
  ]

117:                                              ; preds = %109
  %118 = load %struct.TELNET*, %struct.TELNET** %7, align 8
  %119 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 131, i32* %123, align 4
  br label %125

124:                                              ; preds = %109
  br label %125

125:                                              ; preds = %109, %124, %117
  br label %126

126:                                              ; preds = %72, %125, %108, %81, %80
  br label %127

127:                                              ; preds = %126, %71
  ret void
}

declare dso_local i32 @send_negotiation(%struct.connectdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
