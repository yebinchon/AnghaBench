; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_d3d11_common.c_d3d11_init_shader.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_d3d11_common.c_d3d11_init_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"vs_4_0\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ps_4_0\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"gs_4_0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3d11_init_shader(i32 %0, i8* %1, i64 %2, i8* %3, i64 %4, i64 %5, i64 %6, i32* %7, i32 %8, %struct.TYPE_3__* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_3__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i8* %1, i8** %12, align 8
  store i64 %2, i64* %13, align 8
  store i8* %3, i8** %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %20, align 8
  store i32* null, i32** %21, align 8
  store i32* null, i32** %22, align 8
  store i32* null, i32** %23, align 8
  store i32 1, i32* %24, align 4
  %25 = load i8*, i8** %12, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %58, label %27

27:                                               ; preds = %10
  %28 = load i64, i64* %15, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i8*, i8** %14, align 8
  %32 = ptrtoint i8* %31 to i32
  %33 = load i64, i64* %15, align 8
  %34 = call i32 @d3d_compile_from_file(i32 %32, i64 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32** %21)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 0, i32* %24, align 4
  br label %37

37:                                               ; preds = %36, %30, %27
  %38 = load i64, i64* %16, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i8*, i8** %14, align 8
  %42 = ptrtoint i8* %41 to i32
  %43 = load i64, i64* %16, align 8
  %44 = call i32 @d3d_compile_from_file(i32 %42, i64 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32** %22)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i32 0, i32* %24, align 4
  br label %47

47:                                               ; preds = %46, %40, %37
  %48 = load i64, i64* %17, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i8*, i8** %14, align 8
  %52 = ptrtoint i8* %51 to i32
  %53 = load i64, i64* %17, align 8
  %54 = call i32 @d3d_compile_from_file(i32 %52, i64 %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32** %23)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  store i32 0, i32* %24, align 4
  br label %57

57:                                               ; preds = %56, %50, %47
  br label %95

58:                                               ; preds = %10
  %59 = load i64, i64* %15, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i8*, i8** %12, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = ptrtoint i8* %64 to i64
  %66 = load i64, i64* %15, align 8
  %67 = call i32 @d3d_compile(i8* %62, i64 %63, i64 %65, i64 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32** %21)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %61
  store i32 0, i32* %24, align 4
  br label %70

70:                                               ; preds = %69, %61, %58
  %71 = load i64, i64* %16, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i8*, i8** %12, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = ptrtoint i8* %76 to i64
  %78 = load i64, i64* %16, align 8
  %79 = call i32 @d3d_compile(i8* %74, i64 %75, i64 %77, i64 %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32** %22)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %73
  store i32 0, i32* %24, align 4
  br label %82

82:                                               ; preds = %81, %73, %70
  %83 = load i64, i64* %17, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load i8*, i8** %12, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = ptrtoint i8* %88 to i64
  %90 = load i64, i64* %17, align 8
  %91 = call i32 @d3d_compile(i8* %86, i64 %87, i64 %89, i64 %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32** %23)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %85
  store i32 0, i32* %24, align 4
  br label %94

94:                                               ; preds = %93, %85, %82
  br label %95

95:                                               ; preds = %94, %57
  %96 = load i32*, i32** %21, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = load i32*, i32** %21, align 8
  %101 = call i32 @D3DGetBufferPointer(i32* %100)
  %102 = load i32*, i32** %21, align 8
  %103 = call i32 @D3DGetBufferSize(i32* %102)
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  %106 = call i32 @D3D11CreateVertexShader(i32 %99, i32 %101, i32 %103, i32* null, i32* %105)
  br label %107

107:                                              ; preds = %98, %95
  %108 = load i32*, i32** %22, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load i32, i32* %11, align 4
  %112 = load i32*, i32** %22, align 8
  %113 = call i32 @D3DGetBufferPointer(i32* %112)
  %114 = load i32*, i32** %22, align 8
  %115 = call i32 @D3DGetBufferSize(i32* %114)
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = call i32 @D3D11CreatePixelShader(i32 %111, i32 %113, i32 %115, i32* null, i32* %117)
  br label %119

119:                                              ; preds = %110, %107
  %120 = load i32*, i32** %23, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load i32, i32* %11, align 4
  %124 = load i32*, i32** %23, align 8
  %125 = call i32 @D3DGetBufferPointer(i32* %124)
  %126 = load i32*, i32** %23, align 8
  %127 = call i32 @D3DGetBufferSize(i32* %126)
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = call i32 @D3D11CreateGeometryShader(i32 %123, i32 %125, i32 %127, i32* null, i32* %129)
  br label %131

131:                                              ; preds = %122, %119
  %132 = load i32*, i32** %21, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %148

134:                                              ; preds = %131
  %135 = load i32*, i32** %18, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %148

137:                                              ; preds = %134
  %138 = load i32, i32* %11, align 4
  %139 = load i32*, i32** %18, align 8
  %140 = load i32, i32* %19, align 4
  %141 = load i32*, i32** %21, align 8
  %142 = call i32 @D3DGetBufferPointer(i32* %141)
  %143 = load i32*, i32** %21, align 8
  %144 = call i32 @D3DGetBufferSize(i32* %143)
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = call i32 @D3D11CreateInputLayout(i32 %138, i32* %139, i32 %140, i32 %142, i32 %144, i32* %146)
  br label %148

148:                                              ; preds = %137, %134, %131
  %149 = load i32*, i32** %21, align 8
  %150 = call i32 @Release(i32* %149)
  %151 = load i32*, i32** %22, align 8
  %152 = call i32 @Release(i32* %151)
  %153 = load i32*, i32** %23, align 8
  %154 = call i32 @Release(i32* %153)
  %155 = load i32, i32* %24, align 4
  ret i32 %155
}

declare dso_local i32 @d3d_compile_from_file(i32, i64, i8*, i32**) #1

declare dso_local i32 @d3d_compile(i8*, i64, i64, i64, i8*, i32**) #1

declare dso_local i32 @D3D11CreateVertexShader(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @D3DGetBufferPointer(i32*) #1

declare dso_local i32 @D3DGetBufferSize(i32*) #1

declare dso_local i32 @D3D11CreatePixelShader(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @D3D11CreateGeometryShader(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @D3D11CreateInputLayout(i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
