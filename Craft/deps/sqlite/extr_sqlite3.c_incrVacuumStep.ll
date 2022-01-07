; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_incrVacuumStep.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_incrVacuumStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32* }

@SQLITE_DONE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@PTRMAP_ROOTPAGE = common dso_local global i64 0, align 8
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@PTRMAP_FREEPAGE = common dso_local global i64 0, align 8
@BTALLOC_EXACT = common dso_local global i64 0, align 8
@BTALLOC_ANY = common dso_local global i64 0, align 8
@BTALLOC_LE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64, i64, i32)* @incrVacuumStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @incrVacuumStep(%struct.TYPE_11__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @sqlite3_mutex_held(i32 %23)
  %25 = call i32 @assert(i32 %24)
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp sgt i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @PTRMAP_ISPAGE(%struct.TYPE_11__* %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %156, label %35

35:                                               ; preds = %4
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = call i64 @PENDING_BYTE_PAGE(%struct.TYPE_11__* %37)
  %39 = icmp ne i64 %36, %38
  br i1 %39, label %40, label %156

40:                                               ; preds = %35
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 36
  %47 = call i64 @get4byte(i32* %46)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* @SQLITE_DONE, align 4
  store i32 %51, i32* %5, align 4
  br label %183

52:                                               ; preds = %40
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @ptrmapGet(%struct.TYPE_11__* %53, i64 %54, i64* %12, i64* %13)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @SQLITE_OK, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %5, align 4
  br label %183

61:                                               ; preds = %52
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* @PTRMAP_ROOTPAGE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %66, i32* %5, align 4
  br label %183

67:                                               ; preds = %61
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* @PTRMAP_FREEPAGE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %67
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %71
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @BTALLOC_EXACT, align 8
  %78 = call i32 @allocateBtreePage(%struct.TYPE_11__* %75, i32** %15, i64* %14, i64 %76, i64 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @SQLITE_OK, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %5, align 4
  br label %183

84:                                               ; preds = %74
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %8, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load i32*, i32** %15, align 8
  %91 = call i32 @releasePage(i32* %90)
  br label %92

92:                                               ; preds = %84, %71
  br label %155

93:                                               ; preds = %67
  %94 = load i64, i64* @BTALLOC_ANY, align 8
  store i64 %94, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @btreeGetPage(%struct.TYPE_11__* %95, i64 %96, i32** %17, i32 0, i32 0)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @SQLITE_OK, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %5, align 4
  br label %183

103:                                              ; preds = %93
  %104 = load i32, i32* %9, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i64, i64* @BTALLOC_LE, align 8
  store i64 %107, i64* %18, align 8
  %108 = load i64, i64* %7, align 8
  store i64 %108, i64* %19, align 8
  br label %109

109:                                              ; preds = %106, %103
  br label %110

110:                                              ; preds = %132, %109
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %112 = load i64, i64* %19, align 8
  %113 = load i64, i64* %18, align 8
  %114 = call i32 @allocateBtreePage(%struct.TYPE_11__* %111, i32** %20, i64* %16, i64 %112, i64 %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @SQLITE_OK, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = load i32*, i32** %17, align 8
  %120 = call i32 @releasePage(i32* %119)
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %5, align 4
  br label %183

122:                                              ; preds = %110
  %123 = load i32*, i32** %20, align 8
  %124 = call i32 @releasePage(i32* %123)
  br label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i64, i64* %16, align 8
  %130 = load i64, i64* %7, align 8
  %131 = icmp sgt i64 %129, %130
  br label %132

132:                                              ; preds = %128, %125
  %133 = phi i1 [ false, %125 ], [ %131, %128 ]
  br i1 %133, label %110, label %134

134:                                              ; preds = %132
  %135 = load i64, i64* %16, align 8
  %136 = load i64, i64* %8, align 8
  %137 = icmp slt i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %141 = load i32*, i32** %17, align 8
  %142 = load i64, i64* %12, align 8
  %143 = load i64, i64* %13, align 8
  %144 = load i64, i64* %16, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @relocatePage(%struct.TYPE_11__* %140, i32* %141, i64 %142, i64 %143, i64 %144, i32 %145)
  store i32 %146, i32* %11, align 4
  %147 = load i32*, i32** %17, align 8
  %148 = call i32 @releasePage(i32* %147)
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* @SQLITE_OK, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %134
  %153 = load i32, i32* %11, align 4
  store i32 %153, i32* %5, align 4
  br label %183

154:                                              ; preds = %134
  br label %155

155:                                              ; preds = %154, %92
  br label %156

156:                                              ; preds = %155, %35, %4
  %157 = load i32, i32* %9, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %181

159:                                              ; preds = %156
  br label %160

160:                                              ; preds = %173, %159
  %161 = load i64, i64* %8, align 8
  %162 = add nsw i64 %161, -1
  store i64 %162, i64* %8, align 8
  br label %163

163:                                              ; preds = %160
  %164 = load i64, i64* %8, align 8
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %166 = call i64 @PENDING_BYTE_PAGE(%struct.TYPE_11__* %165)
  %167 = icmp eq i64 %164, %166
  br i1 %167, label %173, label %168

168:                                              ; preds = %163
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %170 = load i64, i64* %8, align 8
  %171 = call i64 @PTRMAP_ISPAGE(%struct.TYPE_11__* %169, i64 %170)
  %172 = icmp ne i64 %171, 0
  br label %173

173:                                              ; preds = %168, %163
  %174 = phi i1 [ true, %163 ], [ %172, %168 ]
  br i1 %174, label %160, label %175

175:                                              ; preds = %173
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  store i32 1, i32* %177, align 8
  %178 = load i64, i64* %8, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 1
  store i64 %178, i64* %180, align 8
  br label %181

181:                                              ; preds = %175, %156
  %182 = load i32, i32* @SQLITE_OK, align 4
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %181, %152, %118, %101, %82, %65, %59, %50
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i64 @PTRMAP_ISPAGE(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @PENDING_BYTE_PAGE(%struct.TYPE_11__*) #1

declare dso_local i64 @get4byte(i32*) #1

declare dso_local i32 @ptrmapGet(%struct.TYPE_11__*, i64, i64*, i64*) #1

declare dso_local i32 @allocateBtreePage(%struct.TYPE_11__*, i32**, i64*, i64, i64) #1

declare dso_local i32 @releasePage(i32*) #1

declare dso_local i32 @btreeGetPage(%struct.TYPE_11__*, i64, i32**, i32, i32) #1

declare dso_local i32 @relocatePage(%struct.TYPE_11__*, i32*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
