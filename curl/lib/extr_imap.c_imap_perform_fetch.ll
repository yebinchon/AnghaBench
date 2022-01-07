; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_perform_fetch.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_perform_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.IMAP* }
%struct.IMAP = type { i8*, i64, i64, i64 }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"UID FETCH %s BODY[%s]<%s>\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"UID FETCH %s BODY[%s]\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"FETCH %s BODY[%s]<%s>\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"FETCH %s BODY[%s]\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Cannot FETCH without a UID.\00", align 1
@CURLE_URL_MALFORMAT = common dso_local global i32 0, align 4
@IMAP_FETCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @imap_perform_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imap_perform_fetch(%struct.connectdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.IMAP*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %6 = load i32, i32* @CURLE_OK, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %8 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.IMAP*, %struct.IMAP** %11, align 8
  store %struct.IMAP* %12, %struct.IMAP** %5, align 8
  %13 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %14 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %60

17:                                               ; preds = %1
  %18 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %19 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %17
  %23 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %24 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %25 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %28 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %33 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  br label %36

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i8* [ %34, %31 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %35 ]
  %38 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %39 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (%struct.connectdata*, i8*, i64, i8*, ...) @imap_sendf(%struct.connectdata* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %26, i8* %37, i64 %40)
  store i32 %41, i32* %4, align 4
  br label %59

42:                                               ; preds = %17
  %43 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %44 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %45 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %48 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %53 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  br label %56

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i8* [ %54, %51 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %55 ]
  %58 = call i32 (%struct.connectdata*, i8*, i64, i8*, ...) @imap_sendf(%struct.connectdata* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %46, i8* %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %36
  br label %115

60:                                               ; preds = %1
  %61 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %62 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %108

65:                                               ; preds = %60
  %66 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %67 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %65
  %71 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %72 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %73 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %76 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %81 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  br label %84

83:                                               ; preds = %70
  br label %84

84:                                               ; preds = %83, %79
  %85 = phi i8* [ %82, %79 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %83 ]
  %86 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %87 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (%struct.connectdata*, i8*, i64, i8*, ...) @imap_sendf(%struct.connectdata* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %74, i8* %85, i64 %88)
  store i32 %89, i32* %4, align 4
  br label %107

90:                                               ; preds = %65
  %91 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %92 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %93 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %96 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %101 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  br label %104

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103, %99
  %105 = phi i8* [ %102, %99 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %103 ]
  %106 = call i32 (%struct.connectdata*, i8*, i64, i8*, ...) @imap_sendf(%struct.connectdata* %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64 %94, i8* %105)
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %104, %84
  br label %114

108:                                              ; preds = %60
  %109 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %110 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = call i32 @failf(%struct.TYPE_4__* %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %113 = load i32, i32* @CURLE_URL_MALFORMAT, align 4
  store i32 %113, i32* %2, align 4
  br label %124

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114, %59
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %120 = load i32, i32* @IMAP_FETCH, align 4
  %121 = call i32 @state(%struct.connectdata* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %115
  %123 = load i32, i32* %4, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %122, %108
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @imap_sendf(%struct.connectdata*, i8*, i64, i8*, ...) #1

declare dso_local i32 @failf(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
