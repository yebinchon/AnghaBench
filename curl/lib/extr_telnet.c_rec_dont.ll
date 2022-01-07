; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_telnet.c_rec_dont.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_telnet.c_rec_dont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TELNET = type { i32*, i32* }

@CURL_WONT = common dso_local global i32 0, align 4
@CURL_WILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connectdata*, i32)* @rec_dont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rec_dont(%struct.connectdata* %0, i32 %1) #0 {
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
  switch i32 %19, label %94 [
    i32 132, label %20
    i32 128, label %21
    i32 130, label %32
    i32 129, label %65
  ]

20:                                               ; preds = %2
  br label %94

21:                                               ; preds = %2
  %22 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %23 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 132, i32* %27, align 4
  %28 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %29 = load i32, i32* @CURL_WONT, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @send_negotiation(%struct.connectdata* %28, i32 %29, i32 %30)
  br label %94

32:                                               ; preds = %2
  %33 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %34 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %64 [
    i32 133, label %40
    i32 131, label %47
  ]

40:                                               ; preds = %32
  %41 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %42 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 132, i32* %46, align 4
  br label %64

47:                                               ; preds = %32
  %48 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %49 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 129, i32* %53, align 4
  %54 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %55 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 133, i32* %59, align 4
  %60 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %61 = load i32, i32* @CURL_WILL, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @send_negotiation(%struct.connectdata* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %32, %47, %40
  br label %94

65:                                               ; preds = %2
  %66 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %67 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %93 [
    i32 133, label %73
    i32 131, label %80
  ]

73:                                               ; preds = %65
  %74 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %75 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 132, i32* %79, align 4
  br label %93

80:                                               ; preds = %65
  %81 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %82 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 132, i32* %86, align 4
  %87 = load %struct.TELNET*, %struct.TELNET** %5, align 8
  %88 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 133, i32* %92, align 4
  br label %93

93:                                               ; preds = %65, %80, %73
  br label %94

94:                                               ; preds = %2, %93, %64, %21, %20
  ret void
}

declare dso_local i32 @send_negotiation(%struct.connectdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
