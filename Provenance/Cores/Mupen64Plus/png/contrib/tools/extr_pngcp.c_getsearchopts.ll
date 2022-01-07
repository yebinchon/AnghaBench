; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_getsearchopts.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_getsearchopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.display = type { i32* }

@options = common dso_local global %struct.TYPE_2__* null, align 8
@strategy = common dso_local global i32 0, align 4
@range_lo = common dso_local global i8* null, align 8
@level = common dso_local global i32 0, align 4
@Z_RLE = common dso_local global i32 0, align 4
@Z_HUFFMAN_ONLY = common dso_local global i32 0, align 4
@windowBits = common dso_local global i32 0, align 4
@memLevel = common dso_local global i32 0, align 4
@MAX_MEM_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"reached\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.display*, i8*, i32*)* @getsearchopts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getsearchopts(%struct.display* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.display*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.display* %0, %struct.display** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.display*, %struct.display** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = call i64 @option_index(%struct.display* %12, i8* %13, i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.display*, %struct.display** %5, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @getallopts_(%struct.display* %22, i64 %23, i32* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %157

29:                                               ; preds = %3
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %157

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.display*, %struct.display** %5, align 8
  %36 = load i32, i32* @strategy, align 4
  %37 = call i64 @OPTIND(%struct.display* %35, i32 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i8*, i8** @range_lo, align 8
  store i8* %38, i8** %11, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.display*, %struct.display** %5, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @advance_opt(%struct.display* %43, i64 %44, i32 0)
  store i32 0, i32* %10, align 4
  br label %141

46:                                               ; preds = %34
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.display*, %struct.display** %5, align 8
  %49 = load i32, i32* @level, align 4
  %50 = call i64 @OPTIND(%struct.display* %48, i32 %49)
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %46
  %53 = load %struct.display*, %struct.display** %5, align 8
  %54 = getelementptr inbounds %struct.display, %struct.display* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @Z_RLE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %70, label %61

61:                                               ; preds = %52
  %62 = load %struct.display*, %struct.display** %5, align 8
  %63 = getelementptr inbounds %struct.display, %struct.display* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @Z_HUFFMAN_ONLY, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %61, %52
  %71 = load %struct.display*, %struct.display** %5, align 8
  %72 = getelementptr inbounds %struct.display, %struct.display* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 1, i32* %75, align 4
  br label %80

76:                                               ; preds = %61
  %77 = load %struct.display*, %struct.display** %5, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i64 @advance_opt(%struct.display* %77, i64 %78, i32 1)
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %76, %70
  br label %140

81:                                               ; preds = %46
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.display*, %struct.display** %5, align 8
  %84 = load i32, i32* @windowBits, align 4
  %85 = call i64 @OPTIND(%struct.display* %83, i32 %84)
  %86 = icmp eq i64 %82, %85
  br i1 %86, label %87, label %123

87:                                               ; preds = %81
  %88 = load %struct.display*, %struct.display** %5, align 8
  %89 = getelementptr inbounds %struct.display, %struct.display* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @Z_HUFFMAN_ONLY, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %87
  %97 = load %struct.display*, %struct.display** %5, align 8
  %98 = getelementptr inbounds %struct.display, %struct.display* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* %9, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32 8, i32* %101, align 4
  br label %122

102:                                              ; preds = %87
  %103 = load %struct.display*, %struct.display** %5, align 8
  %104 = getelementptr inbounds %struct.display, %struct.display* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @Z_RLE, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %102
  %112 = load %struct.display*, %struct.display** %5, align 8
  %113 = getelementptr inbounds %struct.display, %struct.display* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* %9, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32 9, i32* %116, align 4
  br label %121

117:                                              ; preds = %102
  %118 = load %struct.display*, %struct.display** %5, align 8
  %119 = load i64, i64* %9, align 8
  %120 = call i64 @advance_opt(%struct.display* %118, i64 %119, i32 1)
  store i32 0, i32* %10, align 4
  br label %121

121:                                              ; preds = %117, %111
  br label %122

122:                                              ; preds = %121, %96
  br label %139

123:                                              ; preds = %81
  %124 = load i64, i64* %9, align 8
  %125 = load %struct.display*, %struct.display** %5, align 8
  %126 = load i32, i32* @memLevel, align 4
  %127 = call i64 @OPTIND(%struct.display* %125, i32 %126)
  %128 = icmp eq i64 %124, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %123
  %130 = load i32, i32* @MAX_MEM_LEVEL, align 4
  %131 = load %struct.display*, %struct.display** %5, align 8
  %132 = getelementptr inbounds %struct.display, %struct.display* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* %9, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32 %130, i32* %135, align 4
  br label %138

136:                                              ; preds = %123
  %137 = call i32 @assert(i32 0)
  br label %138

138:                                              ; preds = %136, %129
  br label %139

139:                                              ; preds = %138, %122
  br label %140

140:                                              ; preds = %139, %80
  br label %141

141:                                              ; preds = %140, %42
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load %struct.display*, %struct.display** %5, align 8
  %146 = load i64, i64* %9, align 8
  %147 = load i8*, i8** %11, align 8
  %148 = call i32 @record_opt(%struct.display* %145, i64 %146, i8* %147)
  br label %149

149:                                              ; preds = %144, %141
  %150 = load %struct.display*, %struct.display** %5, align 8
  %151 = getelementptr inbounds %struct.display, %struct.display* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* %9, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %7, align 8
  store i32 %155, i32* %156, align 4
  store i32 1, i32* %4, align 4
  br label %157

157:                                              ; preds = %149, %32, %28
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i64 @option_index(%struct.display*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @getallopts_(%struct.display*, i64, i32*, i32) #1

declare dso_local i64 @OPTIND(%struct.display*, i32) #1

declare dso_local i64 @advance_opt(%struct.display*, i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @record_opt(%struct.display*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
