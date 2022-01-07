; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_walMergesort.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_walMergesort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Sublist = type { i32, i64* }
%struct.Sublist.0 = type opaque
%struct.Sublist.1 = type opaque

@HASHTABLE_NPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i64*, i32*)* @walMergesort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walMergesort(i32* %0, i64* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
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
  store i32* %0, i32** %5, align 8
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

41:                                               ; preds = %120, %28
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %123

45:                                               ; preds = %41
  store i32 1, i32* %10, align 4
  %46 = load i64*, i64** %7, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  store i64* %49, i64** %11, align 8
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %106, %45
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = shl i32 1, %52
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %109

56:                                               ; preds = %50
  %57 = load i32, i32* %13, align 4
  %58 = getelementptr inbounds [13 x %struct.Sublist], [13 x %struct.Sublist]* %14, i64 0, i64 0
  %59 = bitcast %struct.Sublist* %58 to %struct.Sublist.1*
  %60 = call i32 @ArraySize(%struct.Sublist.1* %59)
  %61 = icmp slt i32 %57, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [13 x %struct.Sublist], [13 x %struct.Sublist]* %14, i64 0, i64 %65
  store %struct.Sublist* %66, %struct.Sublist** %15, align 8
  %67 = load %struct.Sublist*, %struct.Sublist** %15, align 8
  %68 = getelementptr inbounds %struct.Sublist, %struct.Sublist* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = icmp ne i64* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %56
  %72 = load %struct.Sublist*, %struct.Sublist** %15, align 8
  %73 = getelementptr inbounds %struct.Sublist, %struct.Sublist* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = shl i32 1, %75
  %77 = icmp sle i32 %74, %76
  br label %78

78:                                               ; preds = %71, %56
  %79 = phi i1 [ false, %56 ], [ %77, %71 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.Sublist*, %struct.Sublist** %15, align 8
  %83 = getelementptr inbounds %struct.Sublist, %struct.Sublist* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i64*, i64** %7, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %13, align 4
  %88 = shl i32 2, %87
  %89 = sub nsw i32 %88, 1
  %90 = xor i32 %89, -1
  %91 = and i32 %86, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %85, i64 %92
  %94 = icmp eq i64* %84, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load i32*, i32** %5, align 8
  %98 = load %struct.Sublist*, %struct.Sublist** %15, align 8
  %99 = getelementptr inbounds %struct.Sublist, %struct.Sublist* %98, i32 0, i32 1
  %100 = load i64*, i64** %99, align 8
  %101 = load %struct.Sublist*, %struct.Sublist** %15, align 8
  %102 = getelementptr inbounds %struct.Sublist, %struct.Sublist* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i64*, i64** %6, align 8
  %105 = call i32 @walMerge(i32* %97, i64* %100, i32 %103, i64** %11, i32* %10, i64* %104)
  br label %106

106:                                              ; preds = %78
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  br label %50

109:                                              ; preds = %50
  %110 = load i64*, i64** %11, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [13 x %struct.Sublist], [13 x %struct.Sublist]* %14, i64 0, i64 %112
  %114 = getelementptr inbounds %struct.Sublist, %struct.Sublist* %113, i32 0, i32 1
  store i64* %110, i64** %114, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [13 x %struct.Sublist], [13 x %struct.Sublist]* %14, i64 0, i64 %117
  %119 = getelementptr inbounds %struct.Sublist, %struct.Sublist* %118, i32 0, i32 0
  store i32 %115, i32* %119, align 16
  br label %120

120:                                              ; preds = %109
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  br label %41

123:                                              ; preds = %41
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %126

126:                                              ; preds = %182, %123
  %127 = load i32, i32* %13, align 4
  %128 = getelementptr inbounds [13 x %struct.Sublist], [13 x %struct.Sublist]* %14, i64 0, i64 0
  %129 = bitcast %struct.Sublist* %128 to %struct.Sublist.1*
  %130 = call i32 @ArraySize(%struct.Sublist.1* %129)
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %185

132:                                              ; preds = %126
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %13, align 4
  %135 = shl i32 1, %134
  %136 = and i32 %133, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %181

138:                                              ; preds = %132
  %139 = load i32, i32* %13, align 4
  %140 = getelementptr inbounds [13 x %struct.Sublist], [13 x %struct.Sublist]* %14, i64 0, i64 0
  %141 = bitcast %struct.Sublist* %140 to %struct.Sublist.1*
  %142 = call i32 @ArraySize(%struct.Sublist.1* %141)
  %143 = icmp slt i32 %139, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [13 x %struct.Sublist], [13 x %struct.Sublist]* %14, i64 0, i64 %147
  store %struct.Sublist* %148, %struct.Sublist** %16, align 8
  %149 = load %struct.Sublist*, %struct.Sublist** %16, align 8
  %150 = getelementptr inbounds %struct.Sublist, %struct.Sublist* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %13, align 4
  %153 = shl i32 1, %152
  %154 = icmp sle i32 %151, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  %157 = load %struct.Sublist*, %struct.Sublist** %16, align 8
  %158 = getelementptr inbounds %struct.Sublist, %struct.Sublist* %157, i32 0, i32 1
  %159 = load i64*, i64** %158, align 8
  %160 = load i64*, i64** %7, align 8
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %13, align 4
  %163 = shl i32 2, %162
  %164 = sub nsw i32 %163, 1
  %165 = xor i32 %164, -1
  %166 = and i32 %161, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %160, i64 %167
  %169 = icmp eq i64* %159, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = load i32*, i32** %5, align 8
  %173 = load %struct.Sublist*, %struct.Sublist** %16, align 8
  %174 = getelementptr inbounds %struct.Sublist, %struct.Sublist* %173, i32 0, i32 1
  %175 = load i64*, i64** %174, align 8
  %176 = load %struct.Sublist*, %struct.Sublist** %16, align 8
  %177 = getelementptr inbounds %struct.Sublist, %struct.Sublist* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i64*, i64** %6, align 8
  %180 = call i32 @walMerge(i32* %172, i64* %175, i32 %178, i64** %11, i32* %10, i64* %179)
  br label %181

181:                                              ; preds = %138, %132
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %13, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %13, align 4
  br label %126

185:                                              ; preds = %126
  %186 = load i64*, i64** %11, align 8
  %187 = load i64*, i64** %7, align 8
  %188 = icmp eq i64* %186, %187
  %189 = zext i1 %188 to i32
  %190 = call i32 @assert(i32 %189)
  %191 = load i32, i32* %10, align 4
  %192 = load i32*, i32** %8, align 8
  store i32 %191, i32* %192, align 4
  ret void
}

declare dso_local i32 @memset(%struct.Sublist.0*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ArraySize(%struct.Sublist.1*) #1

declare dso_local i32 @walMerge(i32*, i64*, i32, i64**, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
