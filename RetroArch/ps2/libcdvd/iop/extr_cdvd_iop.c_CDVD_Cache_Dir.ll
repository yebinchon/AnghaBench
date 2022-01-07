; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c_CDVD_Cache_Dir.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c_CDVD_Cache_Dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i8*, i8*, i64, i8*, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@CDVD_Cache_Dir.dirname = internal global [1024 x i8] zeroinitializer, align 16
@CachedDirInfo = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@TRUE = common dso_local global i64 0, align 8
@MATCH = common dso_local global i64 0, align 8
@CACHE_START = common dso_local global i32 0, align 4
@MAX_DIR_CACHE_SECTORS = common dso_local global i8* null, align 8
@cdReadMode = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SUBDIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CDVolDesc = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CDVD_Cache_Dir(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 0), align 8
  %8 = load i64, i64* @TRUE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %121

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @ComparePath(i8* %11)
  %13 = load i64, i64* @MATCH, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %81

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @CACHE_START, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %15
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i64, i64* @TRUE, align 8
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 0), align 8
  %24 = load i64, i64* @TRUE, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %167

26:                                               ; preds = %19
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 3), align 8
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 8
  %28 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 8
  %29 = load i8*, i8** @MAX_DIR_CACHE_SECTORS, align 8
  %30 = icmp ugt i8* %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i8*, i8** @MAX_DIR_CACHE_SECTORS, align 8
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 8
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 4), align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  %36 = add nsw i64 %34, %35
  %37 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 6), align 8
  %39 = call i64 @ReadSect(i64 %36, i8* %37, i32 %38, i32* @cdReadMode)
  %40 = load i64, i64* @TRUE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i32, i32* @FALSE, align 4
  %44 = sext i32 %43 to i64
  store i64 %44, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 0), align 8
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %3, align 4
  br label %167

46:                                               ; preds = %33
  %47 = load i64, i64* @TRUE, align 8
  store i64 %47, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 0), align 8
  %48 = load i64, i64* @TRUE, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %167

50:                                               ; preds = %15
  %51 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  %53 = getelementptr i8, i8* %51, i64 %52
  %54 = ptrtoint i8* %53 to i64
  store i64 %54, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  %55 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 3), align 8
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  %57 = sub i64 0, %56
  %58 = getelementptr i8, i8* %55, i64 %57
  store i8* %58, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 8
  %59 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 8
  %60 = load i8*, i8** @MAX_DIR_CACHE_SECTORS, align 8
  %61 = icmp ugt i8* %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i8*, i8** @MAX_DIR_CACHE_SECTORS, align 8
  store i8* %63, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 8
  br label %64

64:                                               ; preds = %62, %50
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 4), align 8
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  %67 = add nsw i64 %65, %66
  %68 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 6), align 8
  %70 = call i64 @ReadSect(i64 %67, i8* %68, i32 %69, i32* @cdReadMode)
  %71 = load i64, i64* @TRUE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load i32, i32* @FALSE, align 4
  %75 = sext i32 %74 to i64
  store i64 %75, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 0), align 8
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %3, align 4
  br label %167

77:                                               ; preds = %64
  %78 = load i64, i64* @TRUE, align 8
  store i64 %78, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 0), align 8
  %79 = load i64, i64* @TRUE, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %3, align 4
  br label %167

81:                                               ; preds = %10
  %82 = load i8*, i8** %4, align 8
  %83 = call i64 @ComparePath(i8* %82)
  %84 = load i64, i64* @SUBDIR, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %119

86:                                               ; preds = %81
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %86
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  %90 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 3), align 8
  store i8* %90, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 8
  %91 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 8
  %92 = load i8*, i8** @MAX_DIR_CACHE_SECTORS, align 8
  %93 = icmp ugt i8* %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i8*, i8** @MAX_DIR_CACHE_SECTORS, align 8
  store i8* %95, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 8
  br label %96

96:                                               ; preds = %94, %89
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 4), align 8
  %98 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  %99 = add nsw i64 %97, %98
  %100 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 6), align 8
  %102 = call i64 @ReadSect(i64 %99, i8* %100, i32 %101, i32* @cdReadMode)
  %103 = load i64, i64* @TRUE, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load i32, i32* @FALSE, align 4
  %107 = sext i32 %106 to i64
  store i64 %107, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 0), align 8
  %108 = load i32, i32* @FALSE, align 4
  store i32 %108, i32* %3, align 4
  br label %167

109:                                              ; preds = %96
  br label %110

110:                                              ; preds = %109, %86
  %111 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 5), align 8
  %112 = call i32 @strlen(i8* %111)
  store i32 %112, i32* %6, align 4
  %113 = load i8*, i8** %4, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = call i32 @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @CDVD_Cache_Dir.dirname, i64 0, i64 0), i8* %116)
  %118 = call i32 @FindPath(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @CDVD_Cache_Dir.dirname, i64 0, i64 0))
  store i32 %118, i32* %3, align 4
  br label %167

119:                                              ; preds = %81
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %120, %2
  %122 = call i32 (...) @isValidDisc()
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  store i32 -1, i32* %3, align 4
  br label %167

125:                                              ; preds = %121
  %126 = call i32 @sceCdDiskReady(i32 0)
  %127 = call i64 (...) @CDVD_GetVolumeDescriptor()
  %128 = load i64, i64* @TRUE, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  store i32 -1, i32* %3, align 4
  br label %167

131:                                              ; preds = %125
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 7), align 8
  %132 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 5), align 8
  %133 = call i32 @strcpy(i8* %132, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  %134 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CDVolDesc, i32 0, i32 0, i32 0), align 8
  store i64 %134, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 4), align 8
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CDVolDesc, i32 0, i32 0, i32 1), align 8
  %136 = ashr i32 %135, 11
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CDVolDesc, i32 0, i32 0, i32 1), align 8
  %138 = and i32 %137, 2047
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = add nsw i32 %136, %140
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to i8*
  store i8* %143, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 3), align 8
  %144 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 3), align 8
  store i8* %144, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 8
  %145 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 8
  %146 = load i8*, i8** @MAX_DIR_CACHE_SECTORS, align 8
  %147 = icmp ugt i8* %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %131
  %149 = load i8*, i8** @MAX_DIR_CACHE_SECTORS, align 8
  store i8* %149, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 8
  br label %150

150:                                              ; preds = %148, %131
  %151 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 4), align 8
  %152 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 1), align 8
  %153 = add nsw i64 %151, %152
  %154 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 2), align 8
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 6), align 8
  %156 = call i64 @ReadSect(i64 %153, i8* %154, i32 %155, i32* @cdReadMode)
  %157 = load i64, i64* @TRUE, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %150
  %160 = load i32, i32* @FALSE, align 4
  %161 = sext i32 %160 to i64
  store i64 %161, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CachedDirInfo, i32 0, i32 0), align 8
  %162 = load i32, i32* @FALSE, align 4
  store i32 %162, i32* %3, align 4
  br label %167

163:                                              ; preds = %150
  %164 = load i8*, i8** %4, align 8
  %165 = call i32 @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @CDVD_Cache_Dir.dirname, i64 0, i64 0), i8* %164)
  %166 = call i32 @FindPath(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @CDVD_Cache_Dir.dirname, i64 0, i64 0))
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %163, %159, %130, %124, %110, %105, %77, %73, %46, %42, %22
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i64 @ComparePath(i8*) #1

declare dso_local i64 @ReadSect(i64, i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @FindPath(i8*) #1

declare dso_local i32 @isValidDisc(...) #1

declare dso_local i32 @sceCdDiskReady(i32) #1

declare dso_local i64 @CDVD_GetVolumeDescriptor(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
