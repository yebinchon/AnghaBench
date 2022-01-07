; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_hasHotJournal.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_hasHotJournal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i32, i32, i32, i32, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@PAGER_OPEN = common dso_local global i64 0, align 8
@SQLITE_IOCAP_UNDELETABLE_WHEN_OPEN = common dso_local global i32 0, align 4
@SQLITE_ACCESS_EXISTS = common dso_local global i32 0, align 4
@RESERVED_LOCK = common dso_local global i32 0, align 4
@SHARED_LOCK = common dso_local global i32 0, align 4
@SQLITE_OPEN_READONLY = common dso_local global i32 0, align 4
@SQLITE_OPEN_MAIN_JOURNAL = common dso_local global i32 0, align 4
@SQLITE_IOERR_SHORT_READ = common dso_local global i32 0, align 4
@SQLITE_CANTOPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @hasHotJournal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hasHotJournal(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 7
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load i32, i32* @SQLITE_OK, align 4
  store i32 %16, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @isOpen(i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @isOpen(i32 %31)
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PAGER_OPEN, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @sqlite3OsDeviceCharacteristics(i32 %46)
  %48 = load i32, i32* @SQLITE_IOCAP_UNDELETABLE_WHEN_OPEN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %43, %2
  %52 = phi i1 [ true, %2 ], [ %50, %43 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32*, i32** %4, align 8
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SQLITE_ACCESS_EXISTS, align 4
  %64 = call i32 @sqlite3OsAccess(i32* %59, i32 %62, i32 %63, i32* %7)
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %58, %51
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @SQLITE_OK, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %181

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %181

72:                                               ; preds = %69
  store i32 0, i32* %9, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @sqlite3OsCheckReservedLock(i32 %75, i32* %9)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @SQLITE_OK, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %180

80:                                               ; preds = %72
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %180, label %83

83:                                               ; preds = %80
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = call i32 @pagerPagecount(%struct.TYPE_6__* %90, i64* %10)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @SQLITE_OK, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %179

95:                                               ; preds = %83
  %96 = load i64, i64* %10, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %125

98:                                               ; preds = %95
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %125, label %101

101:                                              ; preds = %98
  %102 = call i32 (...) @sqlite3BeginBenignMalloc()
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %104 = load i32, i32* @RESERVED_LOCK, align 4
  %105 = call i32 @pagerLockDb(%struct.TYPE_6__* %103, i32 %104)
  %106 = load i32, i32* @SQLITE_OK, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %101
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @sqlite3OsDelete(i32* %109, i32 %112, i32 0)
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %108
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %120 = load i32, i32* @SHARED_LOCK, align 4
  %121 = call i32 @pagerUnlockDb(%struct.TYPE_6__* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %108
  br label %123

123:                                              ; preds = %122, %101
  %124 = call i32 (...) @sqlite3EndBenignMalloc()
  br label %178

125:                                              ; preds = %98, %95
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %141, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* @SQLITE_OPEN_READONLY, align 4
  %130 = load i32, i32* @SQLITE_OPEN_MAIN_JOURNAL, align 4
  %131 = or i32 %129, %130
  store i32 %131, i32* %11, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @sqlite3OsOpen(i32* %132, i32 %135, i32 %138, i32 %139, i32* %11)
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %128, %125
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @SQLITE_OK, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %169

145:                                              ; preds = %141
  store i64 0, i64* %12, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = bitcast i64* %12 to i8*
  %150 = call i32 @sqlite3OsRead(i32 %148, i8* %149, i32 1, i32 0)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @SQLITE_IOERR_SHORT_READ, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %145
  %155 = load i32, i32* @SQLITE_OK, align 4
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %154, %145
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %156
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @sqlite3OsClose(i32 %162)
  br label %164

164:                                              ; preds = %159, %156
  %165 = load i64, i64* %12, align 8
  %166 = icmp ne i64 %165, 0
  %167 = zext i1 %166 to i32
  %168 = load i32*, i32** %4, align 8
  store i32 %167, i32* %168, align 4
  br label %177

169:                                              ; preds = %141
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* @SQLITE_CANTOPEN, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i32*, i32** %4, align 8
  store i32 1, i32* %174, align 4
  %175 = load i32, i32* @SQLITE_OK, align 4
  store i32 %175, i32* %6, align 4
  br label %176

176:                                              ; preds = %173, %169
  br label %177

177:                                              ; preds = %176, %164
  br label %178

178:                                              ; preds = %177, %123
  br label %179

179:                                              ; preds = %178, %83
  br label %180

180:                                              ; preds = %179, %80, %72
  br label %181

181:                                              ; preds = %180, %69, %65
  %182 = load i32, i32* %6, align 4
  ret i32 %182
}

declare dso_local i32 @isOpen(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3OsDeviceCharacteristics(i32) #1

declare dso_local i32 @sqlite3OsAccess(i32*, i32, i32, i32*) #1

declare dso_local i32 @sqlite3OsCheckReservedLock(i32, i32*) #1

declare dso_local i32 @pagerPagecount(%struct.TYPE_6__*, i64*) #1

declare dso_local i32 @sqlite3BeginBenignMalloc(...) #1

declare dso_local i32 @pagerLockDb(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sqlite3OsDelete(i32*, i32, i32) #1

declare dso_local i32 @pagerUnlockDb(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sqlite3EndBenignMalloc(...) #1

declare dso_local i32 @sqlite3OsOpen(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @sqlite3OsRead(i32, i8*, i32, i32) #1

declare dso_local i32 @sqlite3OsClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
