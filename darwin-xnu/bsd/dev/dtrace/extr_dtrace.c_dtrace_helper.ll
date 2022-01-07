; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_helper.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i32, i32**, i32*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i8** }

@cpu_core = common dso_local global %struct.TYPE_16__* null, align 8
@CPU = common dso_local global %struct.TYPE_11__* null, align 8
@curproc = common dso_local global %struct.TYPE_15__* null, align 8
@dtrace_helptrace_enabled = common dso_local global i32 0, align 4
@DTRACE_NHELPER_ACTIONS = common dso_local global i32 0, align 4
@CPU_DTRACE_FAULT = common dso_local global i32 0, align 4
@DTRACE_HELPTRACE_NEXT = common dso_local global i32 0, align 4
@DTRACE_HELPTRACE_DONE = common dso_local global i32 0, align 4
@DTRACE_HELPTRACE_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.TYPE_12__*, i32*, i8*, i8*)* @dtrace_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dtrace_helper(i32 %0, %struct.TYPE_12__* %1, i32* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cpu_core, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** @CPU, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  store i32* %27, i32** %12, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %13, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** @curproc, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %16, align 8
  %41 = load i32, i32* @dtrace_helptrace_enabled, align 4
  store i32 %41, i32* %21, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %5
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @DTRACE_NHELPER_ACTIONS, align 4
  %47 = icmp slt i32 %45, %46
  br label %48

48:                                               ; preds = %44, %5
  %49 = phi i1 [ false, %5 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @ASSERT(i32 %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %53 = icmp eq %struct.TYPE_13__* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i8* null, i8** %6, align 8
  br label %205

55:                                               ; preds = %48
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %58, i64 %60
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  store %struct.TYPE_14__* %62, %struct.TYPE_14__** %17, align 8
  %63 = icmp eq %struct.TYPE_14__* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  store i8* null, i8** %6, align 8
  br label %205

65:                                               ; preds = %55
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  store i32* %67, i32** %18, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  store i8* %68, i8** %72, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 1
  store i8* %73, i8** %77, align 8
  br label %78

78:                                               ; preds = %160, %65
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %80 = icmp ne %struct.TYPE_14__* %79, null
  br i1 %80, label %81, label %164

81:                                               ; preds = %78
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  store i32* %84, i32** %19, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %110

86:                                               ; preds = %81
  %87 = load i32, i32* %21, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %92 = load i32*, i32** %18, align 8
  %93 = call i32 @dtrace_helper_trace(%struct.TYPE_14__* %90, %struct.TYPE_12__* %91, i32* %92, i32 0)
  br label %94

94:                                               ; preds = %89, %86
  %95 = load i32*, i32** %19, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %97 = load i32*, i32** %18, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = call i8* @dtrace_dif_emulate(i32* %95, %struct.TYPE_12__* %96, i32* %97, i32* %98)
  %100 = icmp ne i8* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %94
  br label %150

102:                                              ; preds = %94
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @CPU_DTRACE_FAULT, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %185

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109, %81
  store i32 0, i32* %20, align 4
  br label %111

111:                                              ; preds = %146, %110
  %112 = load i32, i32* %20, align 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %149

117:                                              ; preds = %111
  %118 = load i32, i32* %21, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %123 = load i32*, i32** %18, align 8
  %124 = load i32, i32* %20, align 4
  %125 = add nsw i32 %124, 1
  %126 = call i32 @dtrace_helper_trace(%struct.TYPE_14__* %121, %struct.TYPE_12__* %122, i32* %123, i32 %125)
  br label %127

127:                                              ; preds = %120, %117
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load i32**, i32*** %129, align 8
  %131 = load i32, i32* %20, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %136 = load i32*, i32** %18, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = call i8* @dtrace_dif_emulate(i32* %134, %struct.TYPE_12__* %135, i32* %136, i32* %137)
  store i8* %138, i8** %15, align 8
  %139 = load i32*, i32** %12, align 8
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @CPU_DTRACE_FAULT, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %127
  br label %185

145:                                              ; preds = %127
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %20, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %20, align 4
  br label %111

149:                                              ; preds = %111
  br label %150

150:                                              ; preds = %149, %101
  %151 = load i32, i32* %21, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %156 = load i32*, i32** %18, align 8
  %157 = load i32, i32* @DTRACE_HELPTRACE_NEXT, align 4
  %158 = call i32 @dtrace_helper_trace(%struct.TYPE_14__* %154, %struct.TYPE_12__* %155, i32* %156, i32 %157)
  br label %159

159:                                              ; preds = %153, %150
  br label %160

160:                                              ; preds = %159
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  store %struct.TYPE_14__* %163, %struct.TYPE_14__** %17, align 8
  br label %78

164:                                              ; preds = %78
  %165 = load i32, i32* %21, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %164
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %170 = load i32*, i32** %18, align 8
  %171 = load i32, i32* @DTRACE_HELPTRACE_DONE, align 4
  %172 = call i32 @dtrace_helper_trace(%struct.TYPE_14__* %168, %struct.TYPE_12__* %169, i32* %170, i32 %171)
  br label %173

173:                                              ; preds = %167, %164
  %174 = load i8*, i8** %13, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i8**, i8*** %176, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i64 0
  store i8* %174, i8** %178, align 8
  %179 = load i8*, i8** %14, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i8**, i8*** %181, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 1
  store i8* %179, i8** %183, align 8
  %184 = load i8*, i8** %15, align 8
  store i8* %184, i8** %6, align 8
  br label %205

185:                                              ; preds = %144, %108
  %186 = load i32, i32* %21, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %185
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %191 = load i32*, i32** %18, align 8
  %192 = load i32, i32* @DTRACE_HELPTRACE_ERR, align 4
  %193 = call i32 @dtrace_helper_trace(%struct.TYPE_14__* %189, %struct.TYPE_12__* %190, i32* %191, i32 %192)
  br label %194

194:                                              ; preds = %188, %185
  %195 = load i8*, i8** %13, align 8
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = load i8**, i8*** %197, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 0
  store i8* %195, i8** %199, align 8
  %200 = load i8*, i8** %14, align 8
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load i8**, i8*** %202, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 1
  store i8* %200, i8** %204, align 8
  store i8* null, i8** %6, align 8
  br label %205

205:                                              ; preds = %194, %173, %64, %54
  %206 = load i8*, i8** %6, align 8
  ret i8* %206
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dtrace_helper_trace(%struct.TYPE_14__*, %struct.TYPE_12__*, i32*, i32) #1

declare dso_local i8* @dtrace_dif_emulate(i32*, %struct.TYPE_12__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
