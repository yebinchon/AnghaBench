; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_zlib_run.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_zlib_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlib = type { i64, i64, %struct.chunk*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.chunk = type { i64 }
%struct.TYPE_4__ = type { %struct.IDAT_list*, %struct.IDAT_list* }
%struct.IDAT_list = type { i32, i64*, %struct.IDAT_list* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"extra compressed data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zlib*)* @zlib_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zlib_run(%struct.zlib* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zlib*, align 8
  %4 = alloca %struct.IDAT_list*, align 8
  %5 = alloca %struct.IDAT_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.IDAT_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.chunk*, align 8
  %14 = alloca i32, align 4
  store %struct.zlib* %0, %struct.zlib** %3, align 8
  %15 = load %struct.zlib*, %struct.zlib** %3, align 8
  %16 = getelementptr inbounds %struct.zlib, %struct.zlib* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.zlib*, %struct.zlib** %3, align 8
  %18 = getelementptr inbounds %struct.zlib, %struct.zlib* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %156

21:                                               ; preds = %1
  %22 = load %struct.zlib*, %struct.zlib** %3, align 8
  %23 = getelementptr inbounds %struct.zlib, %struct.zlib* %22, i32 0, i32 3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.IDAT_list*, %struct.IDAT_list** %25, align 8
  store %struct.IDAT_list* %26, %struct.IDAT_list** %4, align 8
  %27 = load %struct.zlib*, %struct.zlib** %3, align 8
  %28 = getelementptr inbounds %struct.zlib, %struct.zlib* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.IDAT_list*, %struct.IDAT_list** %30, align 8
  store %struct.IDAT_list* %31, %struct.IDAT_list** %5, align 8
  store i32 0, i32* %6, align 4
  %32 = load %struct.zlib*, %struct.zlib** %3, align 8
  %33 = getelementptr inbounds %struct.zlib, %struct.zlib* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  br label %38

38:                                               ; preds = %152, %21
  %39 = load %struct.IDAT_list*, %struct.IDAT_list** %4, align 8
  %40 = getelementptr inbounds %struct.IDAT_list, %struct.IDAT_list* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %144, %38
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %147

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.zlib*, %struct.zlib** %3, align 8
  %51 = getelementptr inbounds %struct.zlib, %struct.zlib* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @skip_12(i32 %52)
  br label %54

54:                                               ; preds = %49, %46
  store i32 12, i32* %6, align 4
  %55 = load %struct.zlib*, %struct.zlib** %3, align 8
  %56 = load %struct.IDAT_list*, %struct.IDAT_list** %4, align 8
  %57 = getelementptr inbounds %struct.IDAT_list, %struct.IDAT_list* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @zlib_advance(%struct.zlib* %55, i64 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  switch i32 %64, label %141 [
    i32 129, label %65
    i32 128, label %66
  ]

65:                                               ; preds = %54
  br label %143

66:                                               ; preds = %54
  %67 = load %struct.zlib*, %struct.zlib** %3, align 8
  %68 = getelementptr inbounds %struct.zlib, %struct.zlib* %67, i32 0, i32 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %119

73:                                               ; preds = %66
  %74 = load %struct.zlib*, %struct.zlib** %3, align 8
  %75 = getelementptr inbounds %struct.zlib, %struct.zlib* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %119

78:                                               ; preds = %73
  %79 = load %struct.IDAT_list*, %struct.IDAT_list** %4, align 8
  store %struct.IDAT_list* %79, %struct.IDAT_list** %10, align 8
  %80 = load i32, i32* %8, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %111, %78
  br label %84

84:                                               ; preds = %103, %83
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %106

88:                                               ; preds = %84
  %89 = load %struct.IDAT_list*, %struct.IDAT_list** %10, align 8
  %90 = getelementptr inbounds %struct.IDAT_list, %struct.IDAT_list* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load %struct.zlib*, %struct.zlib** %3, align 8
  %99 = getelementptr inbounds %struct.zlib, %struct.zlib* %98, i32 0, i32 2
  %100 = load %struct.chunk*, %struct.chunk** %99, align 8
  %101 = call i32 @chunk_message(%struct.chunk* %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %120

102:                                              ; preds = %88
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %84

106:                                              ; preds = %84
  %107 = load %struct.IDAT_list*, %struct.IDAT_list** %10, align 8
  %108 = load %struct.IDAT_list*, %struct.IDAT_list** %5, align 8
  %109 = icmp eq %struct.IDAT_list* %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %118

111:                                              ; preds = %106
  %112 = load %struct.IDAT_list*, %struct.IDAT_list** %10, align 8
  %113 = getelementptr inbounds %struct.IDAT_list, %struct.IDAT_list* %112, i32 0, i32 2
  %114 = load %struct.IDAT_list*, %struct.IDAT_list** %113, align 8
  store %struct.IDAT_list* %114, %struct.IDAT_list** %10, align 8
  %115 = load %struct.IDAT_list*, %struct.IDAT_list** %10, align 8
  %116 = getelementptr inbounds %struct.IDAT_list, %struct.IDAT_list* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %83

118:                                              ; preds = %110
  br label %119

119:                                              ; preds = %118, %73, %66
  br label %120

120:                                              ; preds = %119, %97
  %121 = load %struct.zlib*, %struct.zlib** %3, align 8
  %122 = getelementptr inbounds %struct.zlib, %struct.zlib* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.IDAT_list*, %struct.IDAT_list** %4, align 8
  %125 = getelementptr inbounds %struct.IDAT_list, %struct.IDAT_list* %124, i32 0, i32 1
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %130, %123
  store i64 %131, i64* %129, align 8
  %132 = load i32, i32* %8, align 4
  %133 = add i32 %132, 1
  %134 = load %struct.IDAT_list*, %struct.IDAT_list** %4, align 8
  %135 = getelementptr inbounds %struct.IDAT_list, %struct.IDAT_list* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.IDAT_list*, %struct.IDAT_list** %4, align 8
  %137 = load %struct.zlib*, %struct.zlib** %3, align 8
  %138 = getelementptr inbounds %struct.zlib, %struct.zlib* %137, i32 0, i32 3
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  store %struct.IDAT_list* %136, %struct.IDAT_list** %140, align 8
  br label %141

141:                                              ; preds = %54, %120
  %142 = load i32, i32* %9, align 4
  store i32 %142, i32* %2, align 4
  br label %186

143:                                              ; preds = %65
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %8, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %42

147:                                              ; preds = %42
  %148 = load %struct.IDAT_list*, %struct.IDAT_list** %4, align 8
  %149 = load %struct.IDAT_list*, %struct.IDAT_list** %5, align 8
  %150 = icmp eq %struct.IDAT_list* %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  store i32 129, i32* %2, align 4
  br label %186

152:                                              ; preds = %147
  %153 = load %struct.IDAT_list*, %struct.IDAT_list** %4, align 8
  %154 = getelementptr inbounds %struct.IDAT_list, %struct.IDAT_list* %153, i32 0, i32 2
  %155 = load %struct.IDAT_list*, %struct.IDAT_list** %154, align 8
  store %struct.IDAT_list* %155, %struct.IDAT_list** %4, align 8
  br label %38

156:                                              ; preds = %1
  %157 = load %struct.zlib*, %struct.zlib** %3, align 8
  %158 = getelementptr inbounds %struct.zlib, %struct.zlib* %157, i32 0, i32 2
  %159 = load %struct.chunk*, %struct.chunk** %158, align 8
  store %struct.chunk* %159, %struct.chunk** %13, align 8
  %160 = load %struct.zlib*, %struct.zlib** %3, align 8
  %161 = getelementptr inbounds %struct.zlib, %struct.zlib* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.chunk*, %struct.chunk** %13, align 8
  %164 = getelementptr inbounds %struct.chunk, %struct.chunk* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp slt i64 %162, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 @assert(i32 %167)
  %169 = load %struct.zlib*, %struct.zlib** %3, align 8
  %170 = load %struct.chunk*, %struct.chunk** %13, align 8
  %171 = getelementptr inbounds %struct.chunk, %struct.chunk* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.zlib*, %struct.zlib** %3, align 8
  %174 = getelementptr inbounds %struct.zlib, %struct.zlib* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = sub nsw i64 %172, %175
  %177 = call i32 @zlib_advance(%struct.zlib* %169, i64 %176)
  store i32 %177, i32* %14, align 4
  %178 = load %struct.zlib*, %struct.zlib** %3, align 8
  %179 = getelementptr inbounds %struct.zlib, %struct.zlib* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.chunk*, %struct.chunk** %13, align 8
  %182 = getelementptr inbounds %struct.chunk, %struct.chunk* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = sub nsw i64 %183, %180
  store i64 %184, i64* %182, align 8
  %185 = load i32, i32* %14, align 4
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %156, %151, %141
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @skip_12(i32) #1

declare dso_local i32 @zlib_advance(%struct.zlib*, i64) #1

declare dso_local i32 @chunk_message(%struct.chunk*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
