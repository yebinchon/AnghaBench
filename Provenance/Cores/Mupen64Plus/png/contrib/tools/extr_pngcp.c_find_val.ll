; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_find_val.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_find_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64*, i32 }
%struct.display = type { i64*, i64 }

@INT_MAX = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@options = common dso_local global %struct.TYPE_4__* null, align 8
@range_lo = common dso_local global i64* null, align 8
@range_hi = common dso_local global i64* null, align 8
@INTERNAL_ERROR = common dso_local global i32 0, align 4
@USER_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: unknown value setting '%.*s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.display*, i64, i8*, i64)* @find_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_val(%struct.display* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.display*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.display* %0, %struct.display** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i32, i32* @INT_MAX, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @INT_MIN, align 4
  store i32 %17, i32* %11, align 4
  store i64 0, i64* %13, align 8
  store i64 1, i64* %12, align 8
  br label %18

18:                                               ; preds = %125, %4
  %19 = load i64, i64* %12, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ule i64 %19, %24
  br i1 %25, label %26, label %128

26:                                               ; preds = %18
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i64, i64* %12, align 8
  %33 = sub i64 %32, 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @strncmp(i64* %36, i8* %37, i64 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %26
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i64, i64* %12, align 8
  %48 = sub i64 %47, 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %41
  %57 = load i64, i64* %12, align 8
  %58 = load %struct.display*, %struct.display** %6, align 8
  %59 = getelementptr inbounds %struct.display, %struct.display* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  store i64 %57, i64* %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i64, i64* %12, align 8
  %69 = sub i64 %68, 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %5, align 4
  br label %181

73:                                               ; preds = %41, %26
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i64, i64* %12, align 8
  %80 = sub i64 %79, 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i64*, i64** @range_lo, align 8
  %85 = icmp eq i64* %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %73
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i64, i64* %12, align 8
  %93 = sub i64 %92, 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %10, align 4
  %97 = load i64, i64* %12, align 8
  store i64 %97, i64* %13, align 8
  br label %123

98:                                               ; preds = %73
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %100 = load i64, i64* %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load i64, i64* %12, align 8
  %105 = sub i64 %104, 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load i64*, i64** @range_hi, align 8
  %110 = icmp eq i64* %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %98
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %113 = load i64, i64* %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i64, i64* %12, align 8
  %118 = sub i64 %117, 1
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %11, align 4
  br label %122

122:                                              ; preds = %111, %98
  br label %123

123:                                              ; preds = %122, %86
  br label %124

124:                                              ; preds = %123
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %12, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %12, align 8
  br label %18

128:                                              ; preds = %18
  %129 = load i64, i64* %13, align 8
  %130 = icmp ugt i64 %129, 0
  br i1 %130, label %131, label %159

131:                                              ; preds = %128
  store i8* null, i8** %14, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = call i64 @strtol(i8* %132, i8** %14, i32 0)
  store i64 %133, i64* %15, align 8
  %134 = load i8*, i8** %14, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = load i64, i64* %9, align 8
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  %138 = icmp eq i8* %134, %137
  br i1 %138, label %139, label %158

139:                                              ; preds = %131
  %140 = load i64, i64* %15, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = icmp sge i64 %140, %142
  br i1 %143, label %144, label %158

144:                                              ; preds = %139
  %145 = load i64, i64* %15, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = icmp sle i64 %145, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %144
  %150 = load i64, i64* %13, align 8
  %151 = load %struct.display*, %struct.display** %6, align 8
  %152 = getelementptr inbounds %struct.display, %struct.display* %151, i32 0, i32 0
  %153 = load i64*, i64** %152, align 8
  %154 = load i64, i64* %7, align 8
  %155 = getelementptr inbounds i64, i64* %153, i64 %154
  store i64 %150, i64* %155, align 8
  %156 = load i64, i64* %15, align 8
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %5, align 4
  br label %181

158:                                              ; preds = %144, %139, %131
  br label %159

159:                                              ; preds = %158, %128
  %160 = load %struct.display*, %struct.display** %6, align 8
  %161 = load %struct.display*, %struct.display** %6, align 8
  %162 = getelementptr inbounds %struct.display, %struct.display* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = load i32, i32* @INTERNAL_ERROR, align 4
  br label %169

167:                                              ; preds = %159
  %168 = load i32, i32* @USER_ERROR, align 4
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi i32 [ %166, %165 ], [ %168, %167 ]
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** @options, align 8
  %172 = load i64, i64* %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load i64, i64* %9, align 8
  %177 = trunc i64 %176 to i32
  %178 = load i8*, i8** %8, align 8
  %179 = call i32 @display_log(%struct.display* %160, i32 %170, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %175, i32 %177, i8* %178)
  %180 = call i32 (...) @abort() #3
  unreachable

181:                                              ; preds = %149, %56
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i64 @strncmp(i64*, i8*, i64) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @display_log(%struct.display*, i32, i8*, i32, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
