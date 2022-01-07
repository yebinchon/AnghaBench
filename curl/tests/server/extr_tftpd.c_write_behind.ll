; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_tftpd.c_write_behind.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_tftpd.c_write_behind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tftphdr }
%struct.tftphdr = type { i8* }
%struct.testcase = type { i32, i32 }

@bfs = common dso_local global %struct.bf* null, align 8
@nextone = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"log/upload.%ld\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Couldn't create and/or open file %s for upload!\00", align 1
@BF_FREE = common dso_local global i32 0, align 4
@prevchar = common dso_local global i8 0, align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.testcase*, i32)* @write_behind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_behind(%struct.testcase* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.testcase*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bf*, align 8
  %12 = alloca %struct.tftphdr*, align 8
  %13 = alloca [256 x i8], align 16
  store %struct.testcase* %0, %struct.testcase** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.bf*, %struct.bf** @bfs, align 8
  %15 = load i64, i64* @nextone, align 8
  %16 = getelementptr inbounds %struct.bf, %struct.bf* %14, i64 %15
  store %struct.bf* %16, %struct.bf** %11, align 8
  %17 = load %struct.bf*, %struct.bf** %11, align 8
  %18 = getelementptr inbounds %struct.bf, %struct.bf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %123

22:                                               ; preds = %2
  %23 = load %struct.testcase*, %struct.testcase** %4, align 8
  %24 = getelementptr inbounds %struct.testcase, %struct.testcase* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %29 = load %struct.testcase*, %struct.testcase** %4, align 8
  %30 = getelementptr inbounds %struct.testcase, %struct.testcase* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @msnprintf(i8* %28, i32 256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %34 = load i32, i32* @O_CREAT, align 4
  %35 = load i32, i32* @O_RDWR, align 4
  %36 = or i32 %34, %35
  %37 = call i8* @open(i8* %33, i32 %36, i32 511)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.testcase*, %struct.testcase** %4, align 8
  %40 = getelementptr inbounds %struct.testcase, %struct.testcase* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.testcase*, %struct.testcase** %4, align 8
  %42 = getelementptr inbounds %struct.testcase, %struct.testcase* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %48

45:                                               ; preds = %27
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %47 = call i32 @logmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  store i32 -1, i32* %3, align 4
  br label %123

48:                                               ; preds = %27
  br label %49

49:                                               ; preds = %48, %22
  %50 = load %struct.bf*, %struct.bf** %11, align 8
  %51 = getelementptr inbounds %struct.bf, %struct.bf* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @BF_FREE, align 4
  %54 = load %struct.bf*, %struct.bf** %11, align 8
  %55 = getelementptr inbounds %struct.bf, %struct.bf* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.bf*, %struct.bf** %11, align 8
  %57 = getelementptr inbounds %struct.bf, %struct.bf* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store %struct.tftphdr* %58, %struct.tftphdr** %12, align 8
  %59 = load i64, i64* @nextone, align 8
  %60 = icmp ne i64 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = sext i32 %62 to i64
  store i64 %63, i64* @nextone, align 8
  %64 = load %struct.tftphdr*, %struct.tftphdr** %12, align 8
  %65 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %123

70:                                               ; preds = %49
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.testcase*, %struct.testcase** %4, align 8
  %75 = getelementptr inbounds %struct.testcase, %struct.testcase* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 (i32, ...) @write(i32 %76, i8* %77, i32 %78)
  store i32 %79, i32* %3, align 4
  br label %123

80:                                               ; preds = %70
  %81 = load i8*, i8** %6, align 8
  store i8* %81, i8** %9, align 8
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %118, %80
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %8, align 4
  %86 = icmp ne i32 %84, 0
  br i1 %86, label %87, label %121

87:                                               ; preds = %83
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %9, align 8
  %90 = load i8, i8* %88, align 1
  %91 = sext i8 %90 to i32
  store i32 %91, i32* %10, align 4
  %92 = load i8, i8* @prevchar, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 13
  br i1 %94, label %95, label %110

95:                                               ; preds = %87
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %96, 10
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load %struct.testcase*, %struct.testcase** %4, align 8
  %100 = getelementptr inbounds %struct.testcase, %struct.testcase* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SEEK_CUR, align 4
  %103 = call i32 @lseek(i32 %101, i32 -1, i32 %102)
  br label %109

104:                                              ; preds = %95
  %105 = load i32, i32* %10, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %118

108:                                              ; preds = %104
  br label %109

109:                                              ; preds = %108, %98
  br label %110

110:                                              ; preds = %109, %87
  %111 = load %struct.testcase*, %struct.testcase** %4, align 8
  %112 = getelementptr inbounds %struct.testcase, %struct.testcase* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, ...) @write(i32 %113, i32* %10, i32 1)
  %115 = icmp ne i32 1, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %121

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117, %107
  %119 = load i32, i32* %10, align 4
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* @prevchar, align 1
  br label %83

121:                                              ; preds = %116, %83
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %73, %69, %45, %21
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @msnprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @open(i8*, i32, i32) #1

declare dso_local i32 @logmsg(i8*, i8*) #1

declare dso_local i32 @write(i32, ...) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
