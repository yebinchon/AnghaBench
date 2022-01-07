; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c_CDVD_findfile.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c_CDVD_findfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i32, i32, i64 }
%struct.TocEntry = type { i8* }
%struct.dirTocEntry = type { i32, i32 }

@CDVD_findfile.filename = internal global [129 x i8] zeroinitializer, align 16
@CDVD_findfile.pathname = internal global [1025 x i8] zeroinitializer, align 16
@CachedDirInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TRUE = common dso_local global i64 0, align 8
@MATCH = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@CACHE_NEXT = common dso_local global i32 0, align 4
@CACHE_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CDVD_findfile(i8* %0, %struct.TocEntry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TocEntry*, align 8
  %6 = alloca %struct.dirTocEntry*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TocEntry* %1, %struct.TocEntry** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @_splitpath(i8* %7, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @CDVD_findfile.pathname, i64 0, i64 0), i8* getelementptr inbounds ([129 x i8], [129 x i8]* @CDVD_findfile.filename, i64 0, i64 0))
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 0), align 8
  %10 = load i64, i64* @TRUE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %111

12:                                               ; preds = %2
  %13 = call i64 @ComparePath(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @CDVD_findfile.pathname, i64 0, i64 0))
  %14 = load i64, i64* @MATCH, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %111

16:                                               ; preds = %12
  %17 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 1), align 8
  %18 = bitcast i8* %17 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %18, %struct.dirTocEntry** %6, align 8
  br label %19

19:                                               ; preds = %76, %16
  %20 = load %struct.dirTocEntry*, %struct.dirTocEntry** %6, align 8
  %21 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 1), align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 2), align 8
  %23 = mul nsw i32 %22, 2048
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = bitcast i8* %25 to %struct.dirTocEntry*
  %27 = icmp ult %struct.dirTocEntry* %20, %26
  br i1 %27, label %28, label %85

28:                                               ; preds = %19
  %29 = load %struct.dirTocEntry*, %struct.dirTocEntry** %6, align 8
  %30 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 1), align 8
  %35 = load %struct.dirTocEntry*, %struct.dirTocEntry** %6, align 8
  %36 = bitcast %struct.dirTocEntry* %35 to i8*
  %37 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 1), align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv i64 %40, 2048
  %42 = add nsw i64 %41, 1
  %43 = mul nsw i64 %42, 2048
  %44 = getelementptr inbounds i8, i8* %34, i64 %43
  %45 = bitcast i8* %44 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %45, %struct.dirTocEntry** %6, align 8
  br label %46

46:                                               ; preds = %33, %28
  %47 = load %struct.dirTocEntry*, %struct.dirTocEntry** %6, align 8
  %48 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 1), align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 2), align 8
  %50 = mul nsw i32 %49, 2048
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = bitcast i8* %52 to %struct.dirTocEntry*
  %54 = icmp uge %struct.dirTocEntry* %47, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %85

56:                                               ; preds = %46
  %57 = load %struct.dirTocEntry*, %struct.dirTocEntry** %6, align 8
  %58 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = load %struct.TocEntry*, %struct.TocEntry** %5, align 8
  %64 = load %struct.dirTocEntry*, %struct.dirTocEntry** %6, align 8
  %65 = call i32 @TocEntryCopy(%struct.TocEntry* %63, %struct.dirTocEntry* %64)
  %66 = load %struct.TocEntry*, %struct.TocEntry** %5, align 8
  %67 = getelementptr inbounds %struct.TocEntry, %struct.TocEntry* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @strcasecmp(i8* %68, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @CDVD_findfile.filename, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i64, i64* @TRUE, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %3, align 4
  br label %202

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74, %56
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.dirTocEntry*, %struct.dirTocEntry** %6, align 8
  %78 = bitcast %struct.dirTocEntry* %77 to i32*
  %79 = load %struct.dirTocEntry*, %struct.dirTocEntry** %6, align 8
  %80 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = bitcast i32* %83 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %84, %struct.dirTocEntry** %6, align 8
  br label %19

85:                                               ; preds = %55, %19
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 2), align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 3), align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %3, align 4
  br label %202

91:                                               ; preds = %85
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 4), align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load i32, i32* @CACHE_NEXT, align 4
  %96 = call i64 @CDVD_Cache_Dir(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @CDVD_findfile.pathname, i64 0, i64 0), i32 %95)
  %97 = load i64, i64* @TRUE, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @FALSE, align 4
  store i32 %100, i32* %3, align 4
  br label %202

101:                                              ; preds = %94
  br label %110

102:                                              ; preds = %91
  %103 = load i32, i32* @CACHE_START, align 4
  %104 = call i64 @CDVD_Cache_Dir(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @CDVD_findfile.pathname, i64 0, i64 0), i32 %103)
  %105 = load i64, i64* @TRUE, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* @FALSE, align 4
  store i32 %108, i32* %3, align 4
  br label %202

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109, %101
  br label %119

111:                                              ; preds = %12, %2
  %112 = load i32, i32* @CACHE_START, align 4
  %113 = call i64 @CDVD_Cache_Dir(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @CDVD_findfile.pathname, i64 0, i64 0), i32 %112)
  %114 = load i64, i64* @TRUE, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @FALSE, align 4
  store i32 %117, i32* %3, align 4
  br label %202

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %110
  br label %120

120:                                              ; preds = %197, %119
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 2), align 8
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %200

123:                                              ; preds = %120
  %124 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 1), align 8
  %125 = bitcast i8* %124 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %125, %struct.dirTocEntry** %6, align 8
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 4), align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = load %struct.dirTocEntry*, %struct.dirTocEntry** %6, align 8
  %130 = bitcast %struct.dirTocEntry* %129 to i32*
  %131 = load %struct.dirTocEntry*, %struct.dirTocEntry** %6, align 8
  %132 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  %136 = bitcast i32* %135 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %136, %struct.dirTocEntry** %6, align 8
  br label %137

137:                                              ; preds = %128, %123
  br label %138

138:                                              ; preds = %188, %137
  %139 = load %struct.dirTocEntry*, %struct.dirTocEntry** %6, align 8
  %140 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 1), align 8
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 2), align 8
  %142 = mul nsw i32 %141, 2048
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %140, i64 %143
  %145 = bitcast i8* %144 to %struct.dirTocEntry*
  %146 = icmp ult %struct.dirTocEntry* %139, %145
  br i1 %146, label %147, label %197

147:                                              ; preds = %138
  %148 = load %struct.dirTocEntry*, %struct.dirTocEntry** %6, align 8
  %149 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %147
  %153 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 1), align 8
  %154 = load %struct.dirTocEntry*, %struct.dirTocEntry** %6, align 8
  %155 = bitcast %struct.dirTocEntry* %154 to i8*
  %156 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 1), align 8
  %157 = ptrtoint i8* %155 to i64
  %158 = ptrtoint i8* %156 to i64
  %159 = sub i64 %157, %158
  %160 = sdiv i64 %159, 2048
  %161 = add nsw i64 %160, 1
  %162 = mul nsw i64 %161, 2048
  %163 = getelementptr inbounds i8, i8* %153, i64 %162
  %164 = bitcast i8* %163 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %164, %struct.dirTocEntry** %6, align 8
  br label %165

165:                                              ; preds = %152, %147
  %166 = load %struct.dirTocEntry*, %struct.dirTocEntry** %6, align 8
  %167 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 1), align 8
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CachedDirInfo, i32 0, i32 2), align 8
  %169 = mul nsw i32 %168, 2048
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %167, i64 %170
  %172 = bitcast i8* %171 to %struct.dirTocEntry*
  %173 = icmp uge %struct.dirTocEntry* %166, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %165
  br label %197

175:                                              ; preds = %165
  %176 = load %struct.TocEntry*, %struct.TocEntry** %5, align 8
  %177 = load %struct.dirTocEntry*, %struct.dirTocEntry** %6, align 8
  %178 = call i32 @TocEntryCopy(%struct.TocEntry* %176, %struct.dirTocEntry* %177)
  %179 = load %struct.TocEntry*, %struct.TocEntry** %5, align 8
  %180 = getelementptr inbounds %struct.TocEntry, %struct.TocEntry* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i64 @strcasecmp(i8* %181, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @CDVD_findfile.filename, i64 0, i64 0))
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %175
  %185 = load i64, i64* @TRUE, align 8
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %3, align 4
  br label %202

187:                                              ; preds = %175
  br label %188

188:                                              ; preds = %187
  %189 = load %struct.dirTocEntry*, %struct.dirTocEntry** %6, align 8
  %190 = bitcast %struct.dirTocEntry* %189 to i32*
  %191 = load %struct.dirTocEntry*, %struct.dirTocEntry** %6, align 8
  %192 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %190, i64 %194
  %196 = bitcast i32* %195 to %struct.dirTocEntry*
  store %struct.dirTocEntry* %196, %struct.dirTocEntry** %6, align 8
  br label %138

197:                                              ; preds = %174, %138
  %198 = load i32, i32* @CACHE_NEXT, align 4
  %199 = call i64 @CDVD_Cache_Dir(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @CDVD_findfile.pathname, i64 0, i64 0), i32 %198)
  br label %120

200:                                              ; preds = %120
  %201 = load i32, i32* @FALSE, align 4
  store i32 %201, i32* %3, align 4
  br label %202

202:                                              ; preds = %200, %184, %116, %107, %99, %89, %71
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @_splitpath(i8*, i8*, i8*) #1

declare dso_local i64 @ComparePath(i8*) #1

declare dso_local i32 @TocEntryCopy(%struct.TocEntry*, %struct.dirTocEntry*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @CDVD_Cache_Dir(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
