; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_unixRemapfile.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_unixRemapfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64, i64, i32, i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32* null, align 8
@UNIXFILE_RDONLY = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@MREMAP_MAYMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64)* @unixRemapfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unixRemapfile(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 6
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %7, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  store i32* null, i32** %9, align 8
  %24 = load i32, i32* @PROT_READ, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp sle i64 %38, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i64, i64* %4, align 8
  %46 = icmp sgt i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %51, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32*, i32** @MAP_FAILED, align 8
  %59 = icmp ne i32* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @UNIXFILE_RDONLY, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %2
  %69 = load i32, i32* @PROT_WRITE, align 4
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %68, %2
  %73 = load i32*, i32** %7, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %135

75:                                               ; preds = %72
  %76 = call i32 (...) @unixGetPagesize()
  store i32 %76, i32* %11, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sub nsw i32 %80, 1
  %82 = xor i32 %81, -1
  %83 = sext i32 %82 to i64
  %84 = and i64 %79, %83
  store i64 %84, i64* %12, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %13, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* %8, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %75
  %92 = load i32*, i32** %13, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %12, align 8
  %95 = sub nsw i64 %93, %94
  %96 = call i32 @osMunmap(i32* %92, i64 %95)
  br label %97

97:                                               ; preds = %91, %75
  %98 = load i32*, i32** %13, align 8
  %99 = load i64, i64* %4, align 8
  %100 = load i64, i64* %12, align 8
  %101 = sub nsw i64 %99, %100
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @MAP_SHARED, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i64, i64* %12, align 8
  %106 = call i32* @osMmap(i32* %98, i64 %101, i32 %102, i32 %103, i32 %104, i64 %105)
  store i32* %106, i32** %9, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = load i32*, i32** @MAP_FAILED, align 8
  %109 = icmp ne i32* %107, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %97
  %111 = load i32*, i32** %9, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = icmp ne i32* %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load i32*, i32** %9, align 8
  %116 = load i64, i64* %4, align 8
  %117 = load i64, i64* %12, align 8
  %118 = sub nsw i64 %116, %117
  %119 = call i32 @osMunmap(i32* %115, i64 %118)
  store i32* null, i32** %9, align 8
  br label %122

120:                                              ; preds = %110
  %121 = load i32*, i32** %7, align 8
  store i32* %121, i32** %9, align 8
  br label %122

122:                                              ; preds = %120, %114
  br label %123

123:                                              ; preds = %122, %97
  %124 = load i32*, i32** %9, align 8
  %125 = load i32*, i32** @MAP_FAILED, align 8
  %126 = icmp eq i32* %124, %125
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = load i32*, i32** %9, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %127, %123
  %131 = load i32*, i32** %7, align 8
  %132 = load i64, i64* %12, align 8
  %133 = call i32 @osMunmap(i32* %131, i64 %132)
  br label %134

134:                                              ; preds = %130, %127
  br label %135

135:                                              ; preds = %134, %72
  %136 = load i32*, i32** %9, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load i64, i64* %4, align 8
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @MAP_SHARED, align 4
  %142 = load i32, i32* %6, align 4
  %143 = call i32* @osMmap(i32* null, i64 %139, i32 %140, i32 %141, i32 %142, i64 0)
  store i32* %143, i32** %9, align 8
  br label %144

144:                                              ; preds = %138, %135
  %145 = load i32*, i32** %9, align 8
  %146 = load i32*, i32** @MAP_FAILED, align 8
  %147 = icmp eq i32* %145, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %144
  store i32* null, i32** %9, align 8
  store i64 0, i64* %4, align 8
  %149 = load i32, i32* @SQLITE_OK, align 4
  %150 = load i8*, i8** %5, align 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @unixLogError(i32 %149, i8* %150, i32 %153)
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 4
  store i64 0, i64* %156, align 8
  br label %157

157:                                              ; preds = %148, %144
  %158 = load i32*, i32** %9, align 8
  %159 = bitcast i32* %158 to i8*
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 6
  store i8* %159, i8** %161, align 8
  %162 = load i64, i64* %4, align 8
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  store i64 %162, i64* %164, align 8
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 3
  store i64 %162, i64* %166, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @unixGetPagesize(...) #1

declare dso_local i32 @osMunmap(i32*, i64) #1

declare dso_local i32* @osMmap(i32*, i64, i32, i32, i32, i64) #1

declare dso_local i32 @unixLogError(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
