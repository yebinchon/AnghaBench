; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_gl_cg.c_gl_cg_set_uniform_parameter.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_gl_cg.c_gl_cg_set_uniform_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniform_info = type { i32, %struct.TYPE_9__, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i8*, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.uniform_cg = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"IN.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.uniform_info*, i8*)* @gl_cg_set_uniform_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_cg_set_uniform_parameter(i8* %0, %struct.uniform_info* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uniform_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.uniform_cg*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.uniform_info* %1, %struct.uniform_info** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %8, align 8
  %14 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %15 = icmp ne %struct.uniform_info* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %18 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %3
  br label %188

22:                                               ; preds = %16
  %23 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %24 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %87

28:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %29, align 16
  %30 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %31 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %46 [
    i32 137, label %34
    i32 138, label %45
  ]

34:                                               ; preds = %28
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %39 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  br label %57

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %28, %45
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %51 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %46, %34
  %58 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %59 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %65 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %66 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @snprintf(i8* %64, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %63, %57
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %73 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  br label %84

79:                                               ; preds = %70
  %80 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %81 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  br label %84

84:                                               ; preds = %79, %77
  %85 = phi i8* [ %78, %77 ], [ %83, %79 ]
  %86 = call i32 @cgGetNamedParameter(i32 %71, i8* %85)
  store i32 %86, i32* %7, align 4
  br label %93

87:                                               ; preds = %22
  %88 = load i8*, i8** %6, align 8
  %89 = bitcast i8* %88 to %struct.uniform_cg*
  store %struct.uniform_cg* %89, %struct.uniform_cg** %11, align 8
  %90 = load %struct.uniform_cg*, %struct.uniform_cg** %11, align 8
  %91 = getelementptr inbounds %struct.uniform_cg, %struct.uniform_cg* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %87, %84
  %94 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %95 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  switch i32 %96, label %188 [
    i32 136, label %97
    i32 133, label %105
    i32 131, label %118
    i32 129, label %136
    i32 135, label %159
    i32 132, label %166
    i32 130, label %173
    i32 128, label %180
    i32 134, label %187
  ]

97:                                               ; preds = %93
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %100 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @cgGLSetParameter1f(i32 %98, i32 %103)
  br label %188

105:                                              ; preds = %93
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %108 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %113 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @cgGLSetParameter2f(i32 %106, i32 %111, i32 %116)
  br label %188

118:                                              ; preds = %93
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %121 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %126 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %131 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @cgGLSetParameter3f(i32 %119, i32 %124, i32 %129, i32 %134)
  br label %188

136:                                              ; preds = %93
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %139 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %144 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %149 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %154 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @cgGLSetParameter4f(i32 %137, i32 %142, i32 %147, i32 %152, i32 %157)
  br label %188

159:                                              ; preds = %93
  %160 = load i32, i32* %7, align 4
  %161 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %162 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @cgGLSetParameter1fv(i32 %160, i32 %164)
  br label %188

166:                                              ; preds = %93
  %167 = load i32, i32* %7, align 4
  %168 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %169 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @cgGLSetParameter2fv(i32 %167, i32 %171)
  br label %188

173:                                              ; preds = %93
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %176 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @cgGLSetParameter3fv(i32 %174, i32 %178)
  br label %188

180:                                              ; preds = %93
  %181 = load i32, i32* %7, align 4
  %182 = load %struct.uniform_info*, %struct.uniform_info** %5, align 8
  %183 = getelementptr inbounds %struct.uniform_info, %struct.uniform_info* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @cgGLSetParameter3fv(i32 %181, i32 %185)
  br label %188

187:                                              ; preds = %93
  br label %188

188:                                              ; preds = %21, %93, %187, %180, %173, %166, %159, %136, %118, %105, %97
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @cgGetNamedParameter(i32, i8*) #1

declare dso_local i32 @cgGLSetParameter1f(i32, i32) #1

declare dso_local i32 @cgGLSetParameter2f(i32, i32, i32) #1

declare dso_local i32 @cgGLSetParameter3f(i32, i32, i32, i32) #1

declare dso_local i32 @cgGLSetParameter4f(i32, i32, i32, i32, i32) #1

declare dso_local i32 @cgGLSetParameter1fv(i32, i32) #1

declare dso_local i32 @cgGLSetParameter2fv(i32, i32) #1

declare dso_local i32 @cgGLSetParameter3fv(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
