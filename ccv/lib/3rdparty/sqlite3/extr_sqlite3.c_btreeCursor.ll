; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_btreeCursor.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_btreeCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_15__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.KeyInfo = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i32, %struct.TYPE_15__*, i32, i32, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.KeyInfo* }

@BTREE_WRCSR = common dso_local global i32 0, align 4
@BTREE_FORDELETE = common dso_local global i32 0, align 4
@TRANS_NONE = common dso_local global i64 0, align 8
@TRANS_WRITE = common dso_local global i64 0, align 8
@BTS_READ_ONLY = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@BTCF_WriteFlag = common dso_local global i32 0, align 4
@PAGER_GET_READONLY = common dso_local global i32 0, align 4
@BTCF_Multiple = common dso_local global i32 0, align 4
@CURSOR_INVALID = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i32, %struct.KeyInfo*, %struct.TYPE_15__*)* @btreeCursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btreeCursor(%struct.TYPE_13__* %0, i32 %1, i32 %2, %struct.KeyInfo* %3, %struct.TYPE_15__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.KeyInfo*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.KeyInfo* %3, %struct.KeyInfo** %10, align 8
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %11, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %12, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %18 = call i32 @sqlite3BtreeHoldsMutex(%struct.TYPE_13__* %17)
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @BTREE_WRCSR, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @BTREE_WRCSR, align 4
  %29 = load i32, i32* @BTREE_FORDELETE, align 4
  %30 = or i32 %28, %29
  %31 = icmp eq i32 %27, %30
  br label %32

32:                                               ; preds = %26, %22, %5
  %33 = phi i1 [ true, %22 ], [ true, %5 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.KeyInfo*, %struct.KeyInfo** %10, align 8
  %39 = icmp ne %struct.KeyInfo* %38, null
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 2, i32 1
  %45 = call i32 @hasSharedCacheTableLock(%struct.TYPE_13__* %36, i32 %37, i32 %40, i32 %44)
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %32
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @hasReadConflicts(%struct.TYPE_13__* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %49, %32
  %56 = phi i1 [ true, %32 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TRANS_NONE, align 8
  %63 = icmp sgt i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %55
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @TRANS_WRITE, align 8
  %73 = icmp eq i64 %71, %72
  br label %74

74:                                               ; preds = %68, %55
  %75 = phi i1 [ true, %55 ], [ %73, %68 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = icmp ne %struct.TYPE_12__* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %74
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br label %89

89:                                               ; preds = %82, %74
  %90 = phi i1 [ false, %74 ], [ %88, %82 ]
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %89
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @BTS_READ_ONLY, align 4
  %100 = and i32 %98, %99
  %101 = icmp eq i32 %100, 0
  br label %102

102:                                              ; preds = %95, %89
  %103 = phi i1 [ true, %89 ], [ %101, %95 ]
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %102
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %110 = call i32 @allocateTempSpace(%struct.TYPE_14__* %109)
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %116, i32* %6, align 4
  br label %206

117:                                              ; preds = %108
  br label %118

118:                                              ; preds = %117, %102
  %119 = load i32, i32* %8, align 4
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %123 = call i64 @btreePagecount(%struct.TYPE_14__* %122)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load i32, i32* %9, align 4
  %127 = icmp eq i32 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %125, %121, %118
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  store i32 -1, i32* %136, align 8
  %137 = load %struct.KeyInfo*, %struct.KeyInfo** %10, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 8
  store %struct.KeyInfo* %137, %struct.KeyInfo** %139, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 7
  store %struct.TYPE_13__* %140, %struct.TYPE_13__** %142, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 6
  store %struct.TYPE_14__* %143, %struct.TYPE_14__** %145, align 8
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %130
  %149 = load i32, i32* @BTCF_WriteFlag, align 4
  br label %151

150:                                              ; preds = %130
  br label %151

151:                                              ; preds = %150, %148
  %152 = phi i32 [ %149, %148 ], [ 0, %150 ]
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %160

158:                                              ; preds = %151
  %159 = load i32, i32* @PAGER_GET_READONLY, align 4
  br label %160

160:                                              ; preds = %158, %157
  %161 = phi i32 [ 0, %157 ], [ %159, %158 ]
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 5
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  store %struct.TYPE_15__* %166, %struct.TYPE_15__** %13, align 8
  br label %167

167:                                              ; preds = %189, %160
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %169 = icmp ne %struct.TYPE_15__* %168, null
  br i1 %169, label %170, label %193

170:                                              ; preds = %167
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = icmp eq i64 %173, %175
  br i1 %176, label %177, label %188

177:                                              ; preds = %170
  %178 = load i32, i32* @BTCF_Multiple, align 4
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  %183 = load i32, i32* @BTCF_Multiple, align 4
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 8
  br label %188

188:                                              ; preds = %177, %170
  br label %189

189:                                              ; preds = %188
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 3
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %191, align 8
  store %struct.TYPE_15__* %192, %struct.TYPE_15__** %13, align 8
  br label %167

193:                                              ; preds = %167
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %195, align 8
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 3
  store %struct.TYPE_15__* %196, %struct.TYPE_15__** %198, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 2
  store %struct.TYPE_15__* %199, %struct.TYPE_15__** %201, align 8
  %202 = load i32, i32* @CURSOR_INVALID, align 4
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 2
  store i32 %202, i32* %204, align 4
  %205 = load i32, i32* @SQLITE_OK, align 4
  store i32 %205, i32* %6, align 4
  br label %206

206:                                              ; preds = %193, %115
  %207 = load i32, i32* %6, align 4
  ret i32 %207
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BtreeHoldsMutex(%struct.TYPE_13__*) #1

declare dso_local i32 @hasSharedCacheTableLock(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @hasReadConflicts(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @allocateTempSpace(%struct.TYPE_14__*) #1

declare dso_local i64 @btreePagecount(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
