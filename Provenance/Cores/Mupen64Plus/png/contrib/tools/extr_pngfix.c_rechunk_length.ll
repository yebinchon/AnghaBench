; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_rechunk_length.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_rechunk_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IDAT = type { i64, i32, i64, %struct.IDAT_list*, %struct.IDAT_list*, %struct.TYPE_2__* }
%struct.IDAT_list = type { i64*, i32, %struct.IDAT_list* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.IDAT*, i32)* @rechunk_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rechunk_length(%struct.IDAT* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.IDAT*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.IDAT_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.IDAT_list*, align 8
  %11 = alloca i32, align 4
  store %struct.IDAT* %0, %struct.IDAT** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.IDAT*, %struct.IDAT** %4, align 8
  %13 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %12, i32 0, i32 5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %97

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.IDAT*, %struct.IDAT** %4, align 8
  %24 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %3, align 8
  br label %166

26:                                               ; preds = %19
  %27 = load %struct.IDAT*, %struct.IDAT** %4, align 8
  %28 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %27, i32 0, i32 4
  %29 = load %struct.IDAT_list*, %struct.IDAT_list** %28, align 8
  store %struct.IDAT_list* %29, %struct.IDAT_list** %7, align 8
  %30 = load %struct.IDAT*, %struct.IDAT** %4, align 8
  %31 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  %33 = load %struct.IDAT*, %struct.IDAT** %4, align 8
  %34 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.IDAT*, %struct.IDAT** %4, align 8
  %37 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %26
  %41 = load %struct.IDAT*, %struct.IDAT** %4, align 8
  %42 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.IDAT_list*, %struct.IDAT_list** %7, align 8
  %45 = getelementptr inbounds %struct.IDAT_list, %struct.IDAT_list* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %43, %50
  br label %52

52:                                               ; preds = %40, %26
  %53 = phi i1 [ false, %26 ], [ %51, %40 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %8, align 4
  %58 = load %struct.IDAT_list*, %struct.IDAT_list** %7, align 8
  %59 = getelementptr inbounds %struct.IDAT_list, %struct.IDAT_list* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ult i32 %57, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %52
  %63 = load %struct.IDAT_list*, %struct.IDAT_list** %7, align 8
  %64 = getelementptr inbounds %struct.IDAT_list, %struct.IDAT_list* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %3, align 8
  br label %166

70:                                               ; preds = %52
  %71 = load %struct.IDAT_list*, %struct.IDAT_list** %7, align 8
  %72 = load %struct.IDAT*, %struct.IDAT** %4, align 8
  %73 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %72, i32 0, i32 3
  %74 = load %struct.IDAT_list*, %struct.IDAT_list** %73, align 8
  %75 = icmp ne %struct.IDAT_list* %71, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.IDAT_list*, %struct.IDAT_list** %7, align 8
  %79 = getelementptr inbounds %struct.IDAT_list, %struct.IDAT_list* %78, i32 0, i32 2
  %80 = load %struct.IDAT_list*, %struct.IDAT_list** %79, align 8
  store %struct.IDAT_list* %80, %struct.IDAT_list** %7, align 8
  %81 = load %struct.IDAT_list*, %struct.IDAT_list** %7, align 8
  %82 = icmp ne %struct.IDAT_list* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %70
  %84 = load %struct.IDAT_list*, %struct.IDAT_list** %7, align 8
  %85 = getelementptr inbounds %struct.IDAT_list, %struct.IDAT_list* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp ugt i32 %86, 0
  br label %88

88:                                               ; preds = %83, %70
  %89 = phi i1 [ false, %70 ], [ %87, %83 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.IDAT_list*, %struct.IDAT_list** %7, align 8
  %93 = getelementptr inbounds %struct.IDAT_list, %struct.IDAT_list* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %3, align 8
  br label %166

97:                                               ; preds = %2
  %98 = load %struct.IDAT*, %struct.IDAT** %4, align 8
  %99 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.IDAT*, %struct.IDAT** %4, align 8
  %102 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %100, %103
  store i64 %104, i64* %9, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* %9, align 8
  %107 = icmp sgt i64 %105, %106
  br i1 %107, label %108, label %164

108:                                              ; preds = %97
  %109 = load %struct.IDAT*, %struct.IDAT** %4, align 8
  %110 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %109, i32 0, i32 4
  %111 = load %struct.IDAT_list*, %struct.IDAT_list** %110, align 8
  store %struct.IDAT_list* %111, %struct.IDAT_list** %10, align 8
  %112 = load %struct.IDAT*, %struct.IDAT** %4, align 8
  %113 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = add i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %159, %108
  %117 = load %struct.IDAT_list*, %struct.IDAT_list** %10, align 8
  %118 = icmp ne %struct.IDAT_list* %117, null
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  br label %121

121:                                              ; preds = %155, %116
  br label %122

122:                                              ; preds = %144, %121
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.IDAT_list*, %struct.IDAT_list** %10, align 8
  %125 = getelementptr inbounds %struct.IDAT_list, %struct.IDAT_list* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp ult i32 %123, %126
  br i1 %127, label %128, label %147

128:                                              ; preds = %122
  %129 = load %struct.IDAT_list*, %struct.IDAT_list** %10, align 8
  %130 = getelementptr inbounds %struct.IDAT_list, %struct.IDAT_list* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %9, align 8
  %137 = add nsw i64 %136, %135
  store i64 %137, i64* %9, align 8
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* %9, align 8
  %140 = icmp sle i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %128
  %142 = load i64, i64* %6, align 8
  store i64 %142, i64* %3, align 8
  br label %166

143:                                              ; preds = %128
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %11, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %11, align 4
  br label %122

147:                                              ; preds = %122
  %148 = load %struct.IDAT_list*, %struct.IDAT_list** %10, align 8
  %149 = load %struct.IDAT*, %struct.IDAT** %4, align 8
  %150 = getelementptr inbounds %struct.IDAT, %struct.IDAT* %149, i32 0, i32 3
  %151 = load %struct.IDAT_list*, %struct.IDAT_list** %150, align 8
  %152 = icmp eq %struct.IDAT_list* %148, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = load i64, i64* %9, align 8
  store i64 %154, i64* %3, align 8
  br label %166

155:                                              ; preds = %147
  %156 = load %struct.IDAT_list*, %struct.IDAT_list** %10, align 8
  %157 = getelementptr inbounds %struct.IDAT_list, %struct.IDAT_list* %156, i32 0, i32 2
  %158 = load %struct.IDAT_list*, %struct.IDAT_list** %157, align 8
  store %struct.IDAT_list* %158, %struct.IDAT_list** %10, align 8
  store i32 0, i32* %11, align 4
  br label %121

159:                                              ; No predecessors!
  %160 = load i64, i64* %6, align 8
  %161 = load i64, i64* %9, align 8
  %162 = icmp sgt i64 %160, %161
  br i1 %162, label %116, label %163

163:                                              ; preds = %159
  br label %164

164:                                              ; preds = %163, %97
  %165 = load i64, i64* %6, align 8
  store i64 %165, i64* %3, align 8
  br label %166

166:                                              ; preds = %164, %153, %141, %88, %62, %22
  %167 = load i64, i64* %3, align 8
  ret i64 %167
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
