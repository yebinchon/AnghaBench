; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_telnet.c_rec_do.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_telnet.c_rec_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TELNET = type { i32*, i32*, i32*, i32*, i32* }

@CURL_WILL = common dso_local global i32 0, align 4
@CURL_WONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connectdata*, i32)* @rec_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rec_do(%struct.connectdata* %0, i32 %1) #0 {
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
  switch i32 %19, label %159 [
    i32 132, label %20
    i32 128, label %83
    i32 130, label %84
    i32 129, label %113
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
  br i1 %28, label %29, label %53

29:                                               ; preds = %20
  %30 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %31 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 128, i32* %35, align 4
  %36 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %37 = load i32, i32* @CURL_WILL, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @send_negotiation(%struct.connectdata* %36, i32 %37, i32 %38)
  %40 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %41 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 128
  br i1 %47, label %48, label %52

48:                                               ; preds = %29
  %49 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @sendsuboption(%struct.connectdata* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %29
  br label %82

53:                                               ; preds = %20
  %54 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %55 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 128
  br i1 %61, label %62, label %76

62:                                               ; preds = %53
  %63 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %64 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 128, i32* %68, align 4
  %69 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %70 = load i32, i32* @CURL_WILL, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @send_negotiation(%struct.connectdata* %69, i32 %70, i32 %71)
  %73 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @sendsuboption(%struct.connectdata* %73, i32 %74)
  br label %81

76:                                               ; preds = %53
  %77 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %78 = load i32, i32* @CURL_WONT, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @send_negotiation(%struct.connectdata* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %62
  br label %82

82:                                               ; preds = %81, %52
  br label %159

83:                                               ; preds = %2
  br label %159

84:                                               ; preds = %2
  %85 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %86 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %112 [
    i32 133, label %92
    i32 131, label %99
  ]

92:                                               ; preds = %84
  %93 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %94 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 132, i32* %98, align 4
  br label %112

99:                                               ; preds = %84
  %100 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %101 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 128, i32* %105, align 4
  %106 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %107 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 133, i32* %111, align 4
  br label %112

112:                                              ; preds = %84, %99, %92
  br label %159

113:                                              ; preds = %2
  %114 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %115 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %158 [
    i32 133, label %121
    i32 131, label %141
  ]

121:                                              ; preds = %113
  %122 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %123 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 128, i32* %127, align 4
  %128 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %129 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 128
  br i1 %135, label %136, label %140

136:                                              ; preds = %121
  %137 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @sendsuboption(%struct.connectdata* %137, i32 %138)
  br label %140

140:                                              ; preds = %136, %121
  br label %158

141:                                              ; preds = %113
  %142 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %143 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %4, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 130, i32* %147, align 4
  %148 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %149 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 133, i32* %153, align 4
  %154 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %155 = load i32, i32* @CURL_WONT, align 4
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @send_negotiation(%struct.connectdata* %154, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %113, %141, %140
  br label %159

159:                                              ; preds = %2, %158, %112, %83, %82
  ret void
}

declare dso_local i32 @send_negotiation(%struct.connectdata*, i32, i32) #1

declare dso_local i32 @sendsuboption(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
