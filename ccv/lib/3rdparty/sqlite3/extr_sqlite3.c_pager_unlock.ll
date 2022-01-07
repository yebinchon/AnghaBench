; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_pager_unlock.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_pager_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i64 }

@PAGER_READER = common dso_local global i64 0, align 8
@PAGER_OPEN = common dso_local global i64 0, align 8
@PAGER_ERROR = common dso_local global i64 0, align 8
@PAGER_JOURNALMODE_MEMORY = common dso_local global i32 0, align 4
@PAGER_JOURNALMODE_OFF = common dso_local global i32 0, align 4
@PAGER_JOURNALMODE_WAL = common dso_local global i32 0, align 4
@PAGER_JOURNALMODE_DELETE = common dso_local global i32 0, align 4
@PAGER_JOURNALMODE_TRUNCATE = common dso_local global i32 0, align 4
@PAGER_JOURNALMODE_PERSIST = common dso_local global i32 0, align 4
@SQLITE_IOCAP_UNDELETABLE_WHEN_OPEN = common dso_local global i32 0, align 4
@NO_LOCK = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@UNKNOWN_LOCK = common dso_local global i32 0, align 4
@MEMDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @pager_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pager_unlock(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PAGER_READER, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PAGER_OPEN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PAGER_ERROR, align 8
  %21 = icmp eq i64 %19, %20
  br label %22

22:                                               ; preds = %16, %10, %1
  %23 = phi i1 [ true, %10 ], [ true, %1 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 13
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @sqlite3BitvecDestroy(i64 %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 13
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = call i32 @releaseAllSavepoints(%struct.TYPE_9__* %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = call i64 @pagerUseWal(%struct.TYPE_9__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %22
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @isOpen(i32 %40)
  %42 = icmp ne i64 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 12
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @sqlite3WalEndReadTransaction(i32 %48)
  %50 = load i64, i64* @PAGER_OPEN, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %155

53:                                               ; preds = %22
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 11
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %154, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @isOpen(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @sqlite3OsDeviceCharacteristics(i32 %67)
  br label %70

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %64
  %71 = phi i32 [ %68, %64 ], [ 0, %69 ]
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* @PAGER_JOURNALMODE_MEMORY, align 4
  %73 = and i32 %72, 5
  %74 = icmp ne i32 %73, 1
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load i32, i32* @PAGER_JOURNALMODE_OFF, align 4
  %78 = and i32 %77, 5
  %79 = icmp ne i32 %78, 1
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i32, i32* @PAGER_JOURNALMODE_WAL, align 4
  %83 = and i32 %82, 5
  %84 = icmp ne i32 %83, 1
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i32, i32* @PAGER_JOURNALMODE_DELETE, align 4
  %88 = and i32 %87, 5
  %89 = icmp ne i32 %88, 1
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load i32, i32* @PAGER_JOURNALMODE_TRUNCATE, align 4
  %93 = and i32 %92, 5
  %94 = icmp eq i32 %93, 1
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load i32, i32* @PAGER_JOURNALMODE_PERSIST, align 4
  %98 = and i32 %97, 5
  %99 = icmp eq i32 %98, 1
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @SQLITE_IOCAP_UNDELETABLE_WHEN_OPEN, align 4
  %104 = and i32 %102, %103
  %105 = icmp eq i32 0, %104
  br i1 %105, label %112, label %106

106:                                              ; preds = %70
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, 5
  %111 = icmp ne i32 1, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %106, %70
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @sqlite3OsClose(i32 %115)
  br label %117

117:                                              ; preds = %112, %106
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %119 = load i32, i32* @NO_LOCK, align 4
  %120 = call i32 @pagerUnlockDb(%struct.TYPE_9__* %118, i32 %119)
  store i32 %120, i32* %3, align 4
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* @SQLITE_OK, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %117
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @PAGER_ERROR, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i32, i32* @UNKNOWN_LOCK, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 10
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %130, %124, %117
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %134
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @PAGER_ERROR, align 8
  %144 = icmp ne i64 %142, %143
  br label %145

145:                                              ; preds = %139, %134
  %146 = phi i1 [ true, %134 ], [ %144, %139 ]
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 9
  store i64 0, i64* %150, align 8
  %151 = load i64, i64* @PAGER_OPEN, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %145, %53
  br label %155

155:                                              ; preds = %154, %37
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @SQLITE_OK, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %165, label %161

161:                                              ; preds = %155
  %162 = load i32, i32* @MEMDB, align 4
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  br label %165

165:                                              ; preds = %161, %155
  %166 = phi i1 [ true, %155 ], [ %164, %161 ]
  %167 = zext i1 %166 to i32
  %168 = call i32 @assert(i32 %167)
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %215

173:                                              ; preds = %165
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %173
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %180 = call i32 @pager_reset(%struct.TYPE_9__* %179)
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 9
  store i64 0, i64* %182, align 8
  %183 = load i64, i64* @PAGER_OPEN, align 8
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  store i64 %183, i64* %185, align 8
  br label %200

186:                                              ; preds = %173
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 8
  %189 = load i32, i32* %188, align 4
  %190 = call i64 @isOpen(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %186
  %193 = load i64, i64* @PAGER_OPEN, align 8
  br label %196

194:                                              ; preds = %186
  %195 = load i64, i64* @PAGER_READER, align 8
  br label %196

196:                                              ; preds = %194, %192
  %197 = phi i64 [ %193, %192 ], [ %195, %194 ]
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  store i64 %197, i64* %199, align 8
  br label %200

200:                                              ; preds = %196, %178
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %202 = call i64 @USEFETCH(%struct.TYPE_9__* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %200
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @sqlite3OsUnfetch(i32 %207, i32 0, i32 0)
  br label %209

209:                                              ; preds = %204, %200
  %210 = load i32, i32* @SQLITE_OK, align 4
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 2
  store i32 %210, i32* %212, align 4
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %214 = call i32 @setGetterMethod(%struct.TYPE_9__* %213)
  br label %215

215:                                              ; preds = %209, %165
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 6
  store i64 0, i64* %217, align 8
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 5
  store i64 0, i64* %219, align 8
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 4
  store i64 0, i64* %221, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BitvecDestroy(i64) #1

declare dso_local i32 @releaseAllSavepoints(%struct.TYPE_9__*) #1

declare dso_local i64 @pagerUseWal(%struct.TYPE_9__*) #1

declare dso_local i64 @isOpen(i32) #1

declare dso_local i32 @sqlite3WalEndReadTransaction(i32) #1

declare dso_local i32 @sqlite3OsDeviceCharacteristics(i32) #1

declare dso_local i32 @sqlite3OsClose(i32) #1

declare dso_local i32 @pagerUnlockDb(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @pager_reset(%struct.TYPE_9__*) #1

declare dso_local i64 @USEFETCH(%struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3OsUnfetch(i32, i32, i32) #1

declare dso_local i32 @setGetterMethod(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
