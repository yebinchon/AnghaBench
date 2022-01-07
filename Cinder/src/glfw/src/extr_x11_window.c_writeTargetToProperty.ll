; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_window.c_writeTargetToProperty.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_window.c_writeTargetToProperty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i64, i64, i32 }

@_glfw = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@XA_STRING = common dso_local global i64 0, align 8
@None = common dso_local global i64 0, align 8
@XA_ATOM = common dso_local global i64 0, align 8
@PropModeReplace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*)* @writeTargetToProperty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @writeTargetToProperty(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i64], align 16
  %6 = alloca i32, align 4
  %7 = alloca [5 x i64], align 16
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 0), align 8
  store i64 %13, i64* %12, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 1
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 1), align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 1
  %17 = load i64, i64* @XA_STRING, align 8
  store i64 %17, i64* %16, align 8
  store i32 3, i32* %6, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @None, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i64, i64* @None, align 8
  store i64 %24, i64* %2, align 8
  br label %207

25:                                               ; preds = %1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 2), align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %25
  %32 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 2), align 8
  store i64 %33, i64* %32, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 1
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 3), align 8
  store i64 %35, i64* %34, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 1
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 0), align 8
  store i64 %37, i64* %36, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 1
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 1), align 8
  store i64 %39, i64* %38, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 1
  %41 = load i64, i64* @XA_STRING, align 8
  store i64 %41, i64* %40, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 8), align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @XA_ATOM, align 8
  %50 = load i32, i32* @PropModeReplace, align 4
  %51 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0
  %52 = bitcast i64* %51 to i8*
  %53 = call i32 @XChangeProperty(i32 %42, i32 %45, i64 %48, i64 %49, i32 32, i32 %50, i8* %52, i64 5)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %2, align 8
  br label %207

57:                                               ; preds = %25
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 3), align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %148

63:                                               ; preds = %57
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 4), align 8
  %71 = bitcast i64** %8 to i8**
  %72 = call i64 @_glfwGetWindowPropertyX11(i32 %66, i64 %69, i64 %70, i8** %71)
  store i64 %72, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %73

73:                                               ; preds = %126, %63
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %129

77:                                               ; preds = %73
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %93, %77
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 3
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load i64*, i64** %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %85, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %96

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %78

96:                                               ; preds = %91, %78
  %97 = load i32, i32* %11, align 4
  %98 = icmp slt i32 %97, 3
  br i1 %98, label %99, label %119

99:                                               ; preds = %96
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 8), align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i64*, i64** %8, align 8
  %105 = load i64, i64* %9, align 8
  %106 = add i64 %105, 1
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** %8, align 8
  %110 = load i64, i64* %9, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* @PropModeReplace, align 4
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 7), align 8
  %115 = inttoptr i64 %114 to i8*
  %116 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 7), align 8
  %117 = call i64 @strlen(i64 %116)
  %118 = call i32 @XChangeProperty(i32 %100, i32 %103, i64 %108, i64 %112, i32 8, i32 %113, i8* %115, i64 %117)
  br label %125

119:                                              ; preds = %96
  %120 = load i64, i64* @None, align 8
  %121 = load i64*, i64** %8, align 8
  %122 = load i64, i64* %9, align 8
  %123 = add i64 %122, 1
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  store i64 %120, i64* %124, align 8
  br label %125

125:                                              ; preds = %119, %99
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %9, align 8
  %128 = add i64 %127, 2
  store i64 %128, i64* %9, align 8
  br label %73

129:                                              ; preds = %73
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 8), align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 4), align 8
  %138 = load i32, i32* @PropModeReplace, align 4
  %139 = load i64*, i64** %8, align 8
  %140 = bitcast i64* %139 to i8*
  %141 = load i64, i64* %10, align 8
  %142 = call i32 @XChangeProperty(i32 %130, i32 %133, i64 %136, i64 %137, i32 32, i32 %138, i8* %140, i64 %141)
  %143 = load i64*, i64** %8, align 8
  %144 = call i32 @XFree(i64* %143)
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %2, align 8
  br label %207

148:                                              ; preds = %57
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 5), align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %168

154:                                              ; preds = %148
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 8), align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 6), align 8
  %163 = load i32, i32* @PropModeReplace, align 4
  %164 = call i32 @XChangeProperty(i32 %155, i32 %158, i64 %161, i64 %162, i32 32, i32 %163, i8* null, i64 0)
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  store i64 %167, i64* %2, align 8
  br label %207

168:                                              ; preds = %148
  store i32 0, i32* %4, align 4
  br label %169

169:                                              ; preds = %202, %168
  %170 = load i32, i32* %4, align 4
  %171 = icmp slt i32 %170, 3
  br i1 %171, label %172, label %205

172:                                              ; preds = %169
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %175, %179
  br i1 %180, label %181, label %201

181:                                              ; preds = %172
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 8), align 8
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* @PropModeReplace, align 4
  %193 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 7), align 8
  %194 = inttoptr i64 %193 to i8*
  %195 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 7), align 8
  %196 = call i64 @strlen(i64 %195)
  %197 = call i32 @XChangeProperty(i32 %182, i32 %185, i64 %188, i64 %191, i32 8, i32 %192, i8* %194, i64 %196)
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  store i64 %200, i64* %2, align 8
  br label %207

201:                                              ; preds = %172
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %4, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %4, align 4
  br label %169

205:                                              ; preds = %169
  %206 = load i64, i64* @None, align 8
  store i64 %206, i64* %2, align 8
  br label %207

207:                                              ; preds = %205, %181, %154, %129, %31, %23
  %208 = load i64, i64* %2, align 8
  ret i64 %208
}

declare dso_local i32 @XChangeProperty(i32, i32, i64, i64, i32, i32, i8*, i64) #1

declare dso_local i64 @_glfwGetWindowPropertyX11(i32, i64, i64, i8**) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @XFree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
