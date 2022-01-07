; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/deps/extr_glad.c_find_coreGL.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/deps/extr_glad.c_find_coreGL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"OpenGL ES-CM \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"OpenGL ES-CL \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"OpenGL ES \00", align 1
@__const.find_coreGL.prefixes = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@GL_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@GLVersion = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GLAD_GL_VERSION_1_0 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_1_1 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_1_2 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_1_3 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_1_4 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_1_5 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_2_0 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_2_1 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_3_0 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_3_1 = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_3_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @find_coreGL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_coreGL() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [4 x i8*], align 16
  %6 = alloca i64, align 8
  %7 = bitcast [4 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([4 x i8*]* @__const.find_coreGL.prefixes to i8*), i64 32, i1 false)
  %8 = load i32, i32* @GL_VERSION, align 4
  %9 = call i64 @glGetString(i32 %8)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %0
  br label %169

14:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %40, %14
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %43

21:                                               ; preds = %15
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %6, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @strncmp(i8* %27, i8* %31, i64 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  %36 = load i64, i64* %6, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 %36
  store i8* %38, i8** %4, align 8
  br label %43

39:                                               ; preds = %21
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %1, align 4
  br label %15

43:                                               ; preds = %35, %15
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @sscanf(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %2, i32* %3)
  %46 = load i32, i32* %2, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @GLVersion, i32 0, i32 0), align 4
  %47 = load i32, i32* %3, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @GLVersion, i32 0, i32 1), align 4
  %48 = load i32, i32* %2, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* %3, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50, %43
  %54 = load i32, i32* %2, align 4
  %55 = icmp sgt i32 %54, 1
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i1 [ true, %50 ], [ %55, %53 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* @GLAD_GL_VERSION_1_0, align 4
  %59 = load i32, i32* %2, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %3, align 4
  %63 = icmp sge i32 %62, 1
  br i1 %63, label %67, label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* %2, align 4
  %66 = icmp sgt i32 %65, 1
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi i1 [ true, %61 ], [ %66, %64 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* @GLAD_GL_VERSION_1_1, align 4
  %70 = load i32, i32* %2, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %3, align 4
  %74 = icmp sge i32 %73, 2
  br i1 %74, label %78, label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %2, align 4
  %77 = icmp sgt i32 %76, 1
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i1 [ true, %72 ], [ %77, %75 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* @GLAD_GL_VERSION_1_2, align 4
  %81 = load i32, i32* %2, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %3, align 4
  %85 = icmp sge i32 %84, 3
  br i1 %85, label %89, label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* %2, align 4
  %88 = icmp sgt i32 %87, 1
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi i1 [ true, %83 ], [ %88, %86 ]
  %91 = zext i1 %90 to i32
  store i32 %91, i32* @GLAD_GL_VERSION_1_3, align 4
  %92 = load i32, i32* %2, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* %3, align 4
  %96 = icmp sge i32 %95, 4
  br i1 %96, label %100, label %97

97:                                               ; preds = %94, %89
  %98 = load i32, i32* %2, align 4
  %99 = icmp sgt i32 %98, 1
  br label %100

100:                                              ; preds = %97, %94
  %101 = phi i1 [ true, %94 ], [ %99, %97 ]
  %102 = zext i1 %101 to i32
  store i32 %102, i32* @GLAD_GL_VERSION_1_4, align 4
  %103 = load i32, i32* %2, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* %3, align 4
  %107 = icmp sge i32 %106, 5
  br i1 %107, label %111, label %108

108:                                              ; preds = %105, %100
  %109 = load i32, i32* %2, align 4
  %110 = icmp sgt i32 %109, 1
  br label %111

111:                                              ; preds = %108, %105
  %112 = phi i1 [ true, %105 ], [ %110, %108 ]
  %113 = zext i1 %112 to i32
  store i32 %113, i32* @GLAD_GL_VERSION_1_5, align 4
  %114 = load i32, i32* %2, align 4
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* %3, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116, %111
  %120 = load i32, i32* %2, align 4
  %121 = icmp sgt i32 %120, 2
  br label %122

122:                                              ; preds = %119, %116
  %123 = phi i1 [ true, %116 ], [ %121, %119 ]
  %124 = zext i1 %123 to i32
  store i32 %124, i32* @GLAD_GL_VERSION_2_0, align 4
  %125 = load i32, i32* %2, align 4
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i32, i32* %3, align 4
  %129 = icmp sge i32 %128, 1
  br i1 %129, label %133, label %130

130:                                              ; preds = %127, %122
  %131 = load i32, i32* %2, align 4
  %132 = icmp sgt i32 %131, 2
  br label %133

133:                                              ; preds = %130, %127
  %134 = phi i1 [ true, %127 ], [ %132, %130 ]
  %135 = zext i1 %134 to i32
  store i32 %135, i32* @GLAD_GL_VERSION_2_1, align 4
  %136 = load i32, i32* %2, align 4
  %137 = icmp eq i32 %136, 3
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, i32* %3, align 4
  %140 = icmp sge i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %138, %133
  %142 = load i32, i32* %2, align 4
  %143 = icmp sgt i32 %142, 3
  br label %144

144:                                              ; preds = %141, %138
  %145 = phi i1 [ true, %138 ], [ %143, %141 ]
  %146 = zext i1 %145 to i32
  store i32 %146, i32* @GLAD_GL_VERSION_3_0, align 4
  %147 = load i32, i32* %2, align 4
  %148 = icmp eq i32 %147, 3
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i32, i32* %3, align 4
  %151 = icmp sge i32 %150, 1
  br i1 %151, label %155, label %152

152:                                              ; preds = %149, %144
  %153 = load i32, i32* %2, align 4
  %154 = icmp sgt i32 %153, 3
  br label %155

155:                                              ; preds = %152, %149
  %156 = phi i1 [ true, %149 ], [ %154, %152 ]
  %157 = zext i1 %156 to i32
  store i32 %157, i32* @GLAD_GL_VERSION_3_1, align 4
  %158 = load i32, i32* %2, align 4
  %159 = icmp eq i32 %158, 3
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i32, i32* %3, align 4
  %162 = icmp sge i32 %161, 2
  br i1 %162, label %166, label %163

163:                                              ; preds = %160, %155
  %164 = load i32, i32* %2, align 4
  %165 = icmp sgt i32 %164, 3
  br label %166

166:                                              ; preds = %163, %160
  %167 = phi i1 [ true, %160 ], [ %165, %163 ]
  %168 = zext i1 %167 to i32
  store i32 %168, i32* @GLAD_GL_VERSION_3_2, align 4
  br label %169

169:                                              ; preds = %166, %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @glGetString(i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i64) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
