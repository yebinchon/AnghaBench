; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_tftpd.c_read_ahead.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_tftpd.c_read_ahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tftphdr }
%struct.tftphdr = type { i8* }
%struct.testcase = type { i32*, i64 }

@bfs = common dso_local global %struct.bf* null, align 8
@nextone = common dso_local global i64 0, align 8
@BF_FREE = common dso_local global i32 0, align 4
@SEGSIZE = common dso_local global i32 0, align 4
@newline = common dso_local global i32 0, align 4
@prevchar = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.testcase*, i32)* @read_ahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_ahead(%struct.testcase* %0, i32 %1) #0 {
  %3 = alloca %struct.testcase*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bf*, align 8
  %9 = alloca %struct.tftphdr*, align 8
  %10 = alloca i64, align 8
  store %struct.testcase* %0, %struct.testcase** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.bf*, %struct.bf** @bfs, align 8
  %12 = load i64, i64* @nextone, align 8
  %13 = getelementptr inbounds %struct.bf, %struct.bf* %11, i64 %12
  store %struct.bf* %13, %struct.bf** %8, align 8
  %14 = load %struct.bf*, %struct.bf** %8, align 8
  %15 = getelementptr inbounds %struct.bf, %struct.bf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BF_FREE, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %126

20:                                               ; preds = %2
  %21 = load i64, i64* @nextone, align 8
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = sext i32 %24 to i64
  store i64 %25, i64* @nextone, align 8
  %26 = load %struct.bf*, %struct.bf** %8, align 8
  %27 = getelementptr inbounds %struct.bf, %struct.bf* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.tftphdr* %28, %struct.tftphdr** %9, align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %20
  %32 = load i32, i32* @SEGSIZE, align 4
  %33 = load %struct.testcase*, %struct.testcase** %3, align 8
  %34 = getelementptr inbounds %struct.testcase, %struct.testcase* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @MIN(i32 %32, i64 %35)
  store i64 %36, i64* %10, align 8
  %37 = load %struct.tftphdr*, %struct.tftphdr** %9, align 8
  %38 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.testcase*, %struct.testcase** %3, align 8
  %41 = getelementptr inbounds %struct.testcase, %struct.testcase* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @memcpy(i8* %39, i32* %42, i64 %43)
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.testcase*, %struct.testcase** %3, align 8
  %47 = getelementptr inbounds %struct.testcase, %struct.testcase* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sub i64 %48, %45
  store i64 %49, i64* %47, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.testcase*, %struct.testcase** %3, align 8
  %52 = getelementptr inbounds %struct.testcase, %struct.testcase* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 %50
  store i32* %54, i32** %52, align 8
  %55 = load i64, i64* %10, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.bf*, %struct.bf** %8, align 8
  %58 = getelementptr inbounds %struct.bf, %struct.bf* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %126

59:                                               ; preds = %20
  %60 = load %struct.tftphdr*, %struct.tftphdr** %9, align 8
  %61 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %6, align 8
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %112, %59
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @SEGSIZE, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %115

67:                                               ; preds = %63
  %68 = load i32, i32* @newline, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i8, i8* @prevchar, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 10
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 10, i32* %7, align 4
  br label %76

75:                                               ; preds = %70
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %75, %74
  store i32 0, i32* @newline, align 4
  br label %107

77:                                               ; preds = %67
  %78 = load %struct.testcase*, %struct.testcase** %3, align 8
  %79 = getelementptr inbounds %struct.testcase, %struct.testcase* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %77
  %83 = load %struct.testcase*, %struct.testcase** %3, align 8
  %84 = getelementptr inbounds %struct.testcase, %struct.testcase* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %7, align 4
  %88 = load %struct.testcase*, %struct.testcase** %3, align 8
  %89 = getelementptr inbounds %struct.testcase, %struct.testcase* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %89, align 8
  %92 = load %struct.testcase*, %struct.testcase** %3, align 8
  %93 = getelementptr inbounds %struct.testcase, %struct.testcase* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, -1
  store i64 %95, i64* %93, align 8
  br label %97

96:                                               ; preds = %77
  br label %115

97:                                               ; preds = %82
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %98, 10
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %101, 13
  br i1 %102, label %103, label %106

103:                                              ; preds = %100, %97
  %104 = load i32, i32* %7, align 4
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* @prevchar, align 1
  store i32 13, i32* %7, align 4
  store i32 1, i32* @newline, align 4
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %76
  %108 = load i32, i32* %7, align 4
  %109 = trunc i32 %108 to i8
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %6, align 8
  store i8 %109, i8* %110, align 1
  br label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %63

115:                                              ; preds = %96, %63
  %116 = load i8*, i8** %6, align 8
  %117 = load %struct.tftphdr*, %struct.tftphdr** %9, align 8
  %118 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = ptrtoint i8* %116 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  %123 = trunc i64 %122 to i32
  %124 = load %struct.bf*, %struct.bf** %8, align 8
  %125 = getelementptr inbounds %struct.bf, %struct.bf* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %115, %31, %19
  ret void
}

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
