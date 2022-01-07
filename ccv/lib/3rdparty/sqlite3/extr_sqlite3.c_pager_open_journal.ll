; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_pager_open_journal.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_pager_open_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i32, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@PAGER_WRITER_LOCKED = common dso_local global i64 0, align 8
@PAGER_JOURNALMODE_OFF = common dso_local global i64 0, align 8
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@PAGER_JOURNALMODE_MEMORY = common dso_local global i64 0, align 8
@SQLITE_OPEN_READWRITE = common dso_local global i32 0, align 4
@SQLITE_OPEN_CREATE = common dso_local global i32 0, align 4
@SQLITE_OPEN_DELETEONCLOSE = common dso_local global i32 0, align 4
@SQLITE_OPEN_TEMP_JOURNAL = common dso_local global i32 0, align 4
@sqlite3Config = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@SQLITE_OPEN_MAIN_JOURNAL = common dso_local global i32 0, align 4
@PAGER_WRITER_CACHEMOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @pager_open_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pager_open_journal(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %8 = load i32, i32* @SQLITE_OK, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 12
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PAGER_WRITER_LOCKED, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = call i32 @assert_pager_state(%struct.TYPE_9__* %19)
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @NEVER(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %2, align 4
  br label %170

37:                                               ; preds = %1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = call i32 @pagerUseWal(%struct.TYPE_9__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %146, label %41

41:                                               ; preds = %37
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PAGER_JOURNALMODE_OFF, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %146

47:                                               ; preds = %41
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 11
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @sqlite3BitvecCreate(i32 %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %59, i32* %2, align 4
  br label %170

60:                                               ; preds = %47
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @isOpen(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %130, label %66

66:                                               ; preds = %60
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PAGER_JOURNALMODE_MEMORY, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @sqlite3MemJournalOpen(i32 %75)
  br label %116

77:                                               ; preds = %66
  %78 = load i32, i32* @SQLITE_OPEN_READWRITE, align 4
  %79 = load i32, i32* @SQLITE_OPEN_CREATE, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %6, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 10
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load i32, i32* @SQLITE_OPEN_DELETEONCLOSE, align 4
  %87 = load i32, i32* @SQLITE_OPEN_TEMP_JOURNAL, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sqlite3Config, i32 0, i32 0), align 4
  store i32 %91, i32* %7, align 4
  br label %98

92:                                               ; preds = %77
  %93 = load i32, i32* @SQLITE_OPEN_MAIN_JOURNAL, align 4
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %6, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = call i32 @jrnlBufferSize(%struct.TYPE_9__* %96)
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %92, %85
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %100 = call i32 @databaseIsUnmoved(%struct.TYPE_9__* %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @SQLITE_OK, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %98
  %105 = load i32*, i32** %5, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 9
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @sqlite3JournalOpen(i32* %105, i32 %108, i32 %111, i32 %112, i32 %113)
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %104, %98
  br label %116

116:                                              ; preds = %115, %72
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @SQLITE_OK, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %116
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @isOpen(i32 %123)
  %125 = icmp ne i64 %124, 0
  br label %126

126:                                              ; preds = %120, %116
  %127 = phi i1 [ true, %116 ], [ %125, %120 ]
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  br label %130

130:                                              ; preds = %126, %60
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @SQLITE_OK, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %130
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 7
  store i64 0, i64* %136, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 6
  store i64 0, i64* %138, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 5
  store i64 0, i64* %140, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 4
  store i64 0, i64* %142, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %144 = call i32 @writeJournalHdr(%struct.TYPE_9__* %143)
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %134, %130
  br label %146

146:                                              ; preds = %145, %41, %37
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* @SQLITE_OK, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %146
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @sqlite3BitvecDestroy(i64 %153)
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  store i64 0, i64* %156, align 8
  br label %168

157:                                              ; preds = %146
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @PAGER_WRITER_LOCKED, align 8
  %162 = icmp eq i64 %160, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  %165 = load i64, i64* @PAGER_WRITER_CACHEMOD, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  br label %168

168:                                              ; preds = %157, %150
  %169 = load i32, i32* %4, align 4
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %168, %58, %33
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @assert_pager_state(%struct.TYPE_9__*) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @pagerUseWal(%struct.TYPE_9__*) #1

declare dso_local i64 @sqlite3BitvecCreate(i32) #1

declare dso_local i64 @isOpen(i32) #1

declare dso_local i32 @sqlite3MemJournalOpen(i32) #1

declare dso_local i32 @jrnlBufferSize(%struct.TYPE_9__*) #1

declare dso_local i32 @databaseIsUnmoved(%struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3JournalOpen(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @writeJournalHdr(%struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3BitvecDestroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
