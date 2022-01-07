; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_walMergesort.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_walMergesort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Sublist = type { i32, i64* }
%struct.Sublist.0 = type opaque
%struct.Sublist.1 = type opaque

@HASHTABLE_NPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64*, i32*)* @walMergesort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walMergesort(i64* %0, i64* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [13 x %struct.Sublist], align 16
  %15 = alloca %struct.Sublist*, align 8
  %16 = alloca %struct.Sublist*, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64* null, i64** %11, align 8
  store i32 0, i32* %13, align 4
  %19 = getelementptr inbounds [13 x %struct.Sublist], [13 x %struct.Sublist]* %14, i64 0, i64 0
  %20 = bitcast %struct.Sublist* %19 to %struct.Sublist.0*
  %21 = call i32 @memset(%struct.Sublist.0* %20, i32 0, i32 208)
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @HASHTABLE_NPAGE, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 0
  br label %28

28:                                               ; preds = %25, %4
  %29 = phi i1 [ false, %4 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* @HASHTABLE_NPAGE, align 4
  %33 = getelementptr inbounds [13 x %struct.Sublist], [13 x %struct.Sublist]* %14, i64 0, i64 0
  %34 = bitcast %struct.Sublist* %33 to %struct.Sublist.1*
  %35 = call i32 @ArraySize(%struct.Sublist.1* %34)
  %36 = sub nsw i32 %35, 1
  %37 = shl i32 1, %36
  %38 = icmp eq i32 %32, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %113, %28
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %116

45:                                               ; preds = %41
  store i32 1, i32* %10, align 4
  %46 = load i64*, i64** %7, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  store i64* %49, i64** %11, align 8
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %99, %45
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = shl i32 1, %52
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %102

56:                                               ; preds = %50
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [13 x %struct.Sublist], [13 x %struct.Sublist]* %14, i64 0, i64 %58
  store %struct.Sublist* %59, %struct.Sublist** %15, align 8
  %60 = load %struct.Sublist*, %struct.Sublist** %15, align 8
  %61 = getelementptr inbounds %struct.Sublist, %struct.Sublist* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %56
  %65 = load %struct.Sublist*, %struct.Sublist** %15, align 8
  %66 = getelementptr inbounds %struct.Sublist, %struct.Sublist* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = shl i32 1, %68
  %70 = icmp sle i32 %67, %69
  br label %71

71:                                               ; preds = %64, %56
  %72 = phi i1 [ false, %56 ], [ %70, %64 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.Sublist*, %struct.Sublist** %15, align 8
  %76 = getelementptr inbounds %struct.Sublist, %struct.Sublist* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i64*, i64** %7, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = shl i32 2, %80
  %82 = sub nsw i32 %81, 1
  %83 = xor i32 %82, -1
  %84 = and i32 %79, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %78, i64 %85
  %87 = icmp eq i64* %77, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load i64*, i64** %5, align 8
  %91 = load %struct.Sublist*, %struct.Sublist** %15, align 8
  %92 = getelementptr inbounds %struct.Sublist, %struct.Sublist* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = load %struct.Sublist*, %struct.Sublist** %15, align 8
  %95 = getelementptr inbounds %struct.Sublist, %struct.Sublist* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i64*, i64** %6, align 8
  %98 = call i32 @walMerge(i64* %90, i64* %93, i32 %96, i64** %11, i32* %10, i64* %97)
  br label %99

99:                                               ; preds = %71
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %50

102:                                              ; preds = %50
  %103 = load i64*, i64** %11, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [13 x %struct.Sublist], [13 x %struct.Sublist]* %14, i64 0, i64 %105
  %107 = getelementptr inbounds %struct.Sublist, %struct.Sublist* %106, i32 0, i32 1
  store i64* %103, i64** %107, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [13 x %struct.Sublist], [13 x %struct.Sublist]* %14, i64 0, i64 %110
  %112 = getelementptr inbounds %struct.Sublist, %struct.Sublist* %111, i32 0, i32 0
  store i32 %108, i32* %112, align 16
  br label %113

113:                                              ; preds = %102
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %41

116:                                              ; preds = %41
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  br label %119

119:                                              ; preds = %168, %116
  %120 = load i32, i32* %13, align 4
  %121 = getelementptr inbounds [13 x %struct.Sublist], [13 x %struct.Sublist]* %14, i64 0, i64 0
  %122 = bitcast %struct.Sublist* %121 to %struct.Sublist.1*
  %123 = call i32 @ArraySize(%struct.Sublist.1* %122)
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %171

125:                                              ; preds = %119
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %13, align 4
  %128 = shl i32 1, %127
  %129 = and i32 %126, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %167

131:                                              ; preds = %125
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [13 x %struct.Sublist], [13 x %struct.Sublist]* %14, i64 0, i64 %133
  store %struct.Sublist* %134, %struct.Sublist** %16, align 8
  %135 = load %struct.Sublist*, %struct.Sublist** %16, align 8
  %136 = getelementptr inbounds %struct.Sublist, %struct.Sublist* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = shl i32 1, %138
  %140 = icmp sle i32 %137, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = load %struct.Sublist*, %struct.Sublist** %16, align 8
  %144 = getelementptr inbounds %struct.Sublist, %struct.Sublist* %143, i32 0, i32 1
  %145 = load i64*, i64** %144, align 8
  %146 = load i64*, i64** %7, align 8
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %13, align 4
  %149 = shl i32 2, %148
  %150 = sub nsw i32 %149, 1
  %151 = xor i32 %150, -1
  %152 = and i32 %147, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %146, i64 %153
  %155 = icmp eq i64* %145, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  %158 = load i64*, i64** %5, align 8
  %159 = load %struct.Sublist*, %struct.Sublist** %16, align 8
  %160 = getelementptr inbounds %struct.Sublist, %struct.Sublist* %159, i32 0, i32 1
  %161 = load i64*, i64** %160, align 8
  %162 = load %struct.Sublist*, %struct.Sublist** %16, align 8
  %163 = getelementptr inbounds %struct.Sublist, %struct.Sublist* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i64*, i64** %6, align 8
  %166 = call i32 @walMerge(i64* %158, i64* %161, i32 %164, i64** %11, i32* %10, i64* %165)
  br label %167

167:                                              ; preds = %131, %125
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  br label %119

171:                                              ; preds = %119
  %172 = load i64*, i64** %11, align 8
  %173 = load i64*, i64** %7, align 8
  %174 = icmp eq i64* %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 @assert(i32 %175)
  %177 = load i32, i32* %10, align 4
  %178 = load i32*, i32** %8, align 8
  store i32 %177, i32* %178, align 4
  ret void
}

declare dso_local i32 @memset(%struct.Sublist.0*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ArraySize(%struct.Sublist.1*) #1

declare dso_local i32 @walMerge(i64*, i64*, i32, i64**, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
