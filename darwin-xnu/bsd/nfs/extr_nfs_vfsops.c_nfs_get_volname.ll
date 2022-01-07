; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vfsops.c_nfs_get_volname.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vfsops.c_nfs_get_volname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Bad volname\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mount*, i8*, i64)* @nfs_get_volname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_get_volname(%struct.mount* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.mount*, %struct.mount** %4, align 8
  %13 = getelementptr inbounds %struct.mount, %struct.mount* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i32, i32* @MAXPATHLEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i64 @strnlen(i8* %16, i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* @MAXPATHLEN, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ugt i64 %20, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i64, i64* %10, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24, %3
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @strlcpy(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %29)
  br label %128

31:                                               ; preds = %24
  %32 = load i8*, i8** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = sub i64 %33, 1
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8* %35, i8** %7, align 8
  br label %36

36:                                               ; preds = %50, %31
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 47
  br label %45

45:                                               ; preds = %40, %36
  %46 = phi i1 [ false, %36 ], [ %44, %40 ]
  br i1 %46, label %47, label %53

47:                                               ; preds = %45
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %47
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 -1
  store i8* %52, i8** %7, align 8
  br label %36

53:                                               ; preds = %45
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %11, align 8
  br label %54

54:                                               ; preds = %87, %53
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %90

58:                                               ; preds = %54
  %59 = load i8*, i8** %9, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 47
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load i8*, i8** %9, align 8
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %67, 1
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8* %69, i8** %7, align 8
  br label %86

70:                                               ; preds = %58
  %71 = load i8*, i8** %8, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 58
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load i8*, i8** %9, align 8
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %82, 1
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8* %84, i8** %8, align 8
  br label %85

85:                                               ; preds = %80, %73, %70
  br label %86

86:                                               ; preds = %85, %65
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %11, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %11, align 8
  br label %54

90:                                               ; preds = %54
  %91 = load i8*, i8** %7, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = load i8*, i8** %7, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93, %90
  %99 = load i8*, i8** %8, align 8
  store i8* %99, i8** %7, align 8
  br label %100

100:                                              ; preds = %98, %93
  %101 = load i8*, i8** %7, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i8*, i8** %9, align 8
  store i8* %104, i8** %7, align 8
  br label %105

105:                                              ; preds = %103, %100
  %106 = load i8*, i8** %9, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  %109 = load i8*, i8** %7, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  store i64 %112, i64* %10, align 8
  %113 = load i64, i64* %10, align 8
  %114 = add i64 %113, 1
  %115 = load i64, i64* %6, align 8
  %116 = icmp ult i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %105
  %118 = load i64, i64* %10, align 8
  %119 = add i64 %118, 1
  br label %122

120:                                              ; preds = %105
  %121 = load i64, i64* %6, align 8
  br label %122

122:                                              ; preds = %120, %117
  %123 = phi i64 [ %119, %117 ], [ %121, %120 ]
  store i64 %123, i64* %6, align 8
  %124 = load i8*, i8** %5, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = load i64, i64* %6, align 8
  %127 = call i32 @strlcpy(i8* %124, i8* %125, i64 %126)
  br label %128

128:                                              ; preds = %122, %27
  ret void
}

declare dso_local i64 @strnlen(i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
