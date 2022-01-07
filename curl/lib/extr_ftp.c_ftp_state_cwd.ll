; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_cwd.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_cwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { i8**, i32, i8*, i32, i32, i64, i64, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@FTPFILE_NOCWD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"CWD %s\00", align 1
@FTP_CWD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @ftp_state_cwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_state_cwd(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ftp_conn*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %5 = load i32, i32* @CURLE_OK, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %7 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store %struct.ftp_conn* %8, %struct.ftp_conn** %4, align 8
  %9 = load %struct.ftp_conn*, %struct.ftp_conn** %4, align 8
  %10 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %15 = call i32 @ftp_state_mdtm(%struct.connectdata* %14)
  store i32 %15, i32* %3, align 4
  br label %130

16:                                               ; preds = %1
  %17 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %18 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FTPFILE_NOCWD, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %43, label %25

25:                                               ; preds = %16
  %26 = load %struct.ftp_conn*, %struct.ftp_conn** %4, align 8
  %27 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.ftp_conn*, %struct.ftp_conn** %4, align 8
  %32 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %31, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 47
  br label %40

40:                                               ; preds = %30, %25
  %41 = phi i1 [ false, %25 ], [ %39, %30 ]
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %40, %16
  %44 = phi i1 [ true, %16 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @DEBUGASSERT(i32 %45)
  %47 = load %struct.ftp_conn*, %struct.ftp_conn** %4, align 8
  %48 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %47, i32 0, i32 6
  store i64 0, i64* %48, align 8
  %49 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %50 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 2
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  %58 = load %struct.ftp_conn*, %struct.ftp_conn** %4, align 8
  %59 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %61 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %99

65:                                               ; preds = %43
  %66 = load %struct.ftp_conn*, %struct.ftp_conn** %4, align 8
  %67 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %99

70:                                               ; preds = %65
  %71 = load %struct.ftp_conn*, %struct.ftp_conn** %4, align 8
  %72 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load %struct.ftp_conn*, %struct.ftp_conn** %4, align 8
  %77 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %76, i32 0, i32 0
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 0
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 47
  br i1 %84, label %99, label %85

85:                                               ; preds = %75, %70
  %86 = load %struct.ftp_conn*, %struct.ftp_conn** %4, align 8
  %87 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %86, i32 0, i32 3
  store i32 0, i32* %87, align 8
  %88 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %89 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %90, i32 0, i32 4
  %92 = load %struct.ftp_conn*, %struct.ftp_conn** %4, align 8
  %93 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @PPSENDF(i32* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %94)
  %96 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %97 = load i32, i32* @FTP_CWD, align 4
  %98 = call i32 @state(%struct.connectdata* %96, i32 %97)
  br label %129

99:                                               ; preds = %75, %65, %43
  %100 = load %struct.ftp_conn*, %struct.ftp_conn** %4, align 8
  %101 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %99
  %105 = load %struct.ftp_conn*, %struct.ftp_conn** %4, align 8
  %106 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %105, i32 0, i32 3
  store i32 1, i32* %106, align 8
  %107 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %108 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %109, i32 0, i32 4
  %111 = load %struct.ftp_conn*, %struct.ftp_conn** %4, align 8
  %112 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %111, i32 0, i32 0
  %113 = load i8**, i8*** %112, align 8
  %114 = load %struct.ftp_conn*, %struct.ftp_conn** %4, align 8
  %115 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %113, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @PPSENDF(i32* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %120)
  %122 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %123 = load i32, i32* @FTP_CWD, align 4
  %124 = call i32 @state(%struct.connectdata* %122, i32 %123)
  br label %128

125:                                              ; preds = %99
  %126 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %127 = call i32 @ftp_state_mdtm(%struct.connectdata* %126)
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %125, %104
  br label %129

129:                                              ; preds = %128, %85
  br label %130

130:                                              ; preds = %129, %13
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @ftp_state_mdtm(%struct.connectdata*) #1

declare dso_local i32 @DEBUGASSERT(i32) #1

declare dso_local i32 @PPSENDF(i32*, i8*, i8*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
