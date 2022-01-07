; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/tools/ftrandom/extr_ftrandom.c_figurefiletype.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/tools/ftrandom/extr_ftrandom.c_figurefiletype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fontlist = type { i32, i32, i32, i8* }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".pfa\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".PFA\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Can't recognize file type of `%s', assuming binary\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Can't open `%s' for typing the file.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fontlist*)* @figurefiletype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @figurefiletype(%struct.fontlist* %0) #0 {
  %2 = alloca %struct.fontlist*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fontlist* %0, %struct.fontlist** %2, align 8
  %8 = load %struct.fontlist*, %struct.fontlist** %2, align 8
  %9 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %8, i32 0, i32 2
  store i32 0, i32* %9, align 8
  %10 = load %struct.fontlist*, %struct.fontlist** %2, align 8
  %11 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load %struct.fontlist*, %struct.fontlist** %2, align 8
  %13 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.fontlist*, %struct.fontlist** %2, align 8
  %15 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %14, i32 0, i32 3
  %16 = load i8*, i8** %15, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %193

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @getc(i32* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @getc(i32* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @getc(i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @getc(i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @fclose(i32* %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %78, label %42

42:                                               ; preds = %39, %36, %33, %20
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 79
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 84
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 84
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 79
  br i1 %53, label %78, label %54

54:                                               ; preds = %51, %48, %45, %42
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 116
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 114
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 117
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %64, 101
  br i1 %65, label %78, label %66

66:                                               ; preds = %63, %60, %57, %54
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, 116
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 116
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 99
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 102
  br i1 %77, label %78, label %81

78:                                               ; preds = %75, %63, %51, %39
  %79 = load %struct.fontlist*, %struct.fontlist** %2, align 8
  %80 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  br label %192

81:                                               ; preds = %75, %72, %69, %66
  %82 = load i32, i32* %4, align 4
  %83 = icmp eq i32 %82, 128
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* %5, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.fontlist*, %struct.fontlist** %2, align 8
  %89 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  br label %191

90:                                               ; preds = %84, %81
  %91 = load i32, i32* %4, align 4
  %92 = icmp eq i32 %91, 37
  br i1 %92, label %93, label %115

93:                                               ; preds = %90
  %94 = load i32, i32* %5, align 4
  %95 = icmp eq i32 %94, 33
  br i1 %95, label %96, label %115

96:                                               ; preds = %93
  %97 = load %struct.fontlist*, %struct.fontlist** %2, align 8
  %98 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  %100 = call i64 @strstr(i8* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = load %struct.fontlist*, %struct.fontlist** %2, align 8
  %104 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %103, i32 0, i32 3
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @strstr(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102, %96
  %109 = load %struct.fontlist*, %struct.fontlist** %2, align 8
  %110 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %109, i32 0, i32 2
  store i32 1, i32* %110, align 8
  br label %114

111:                                              ; preds = %102
  %112 = load %struct.fontlist*, %struct.fontlist** %2, align 8
  %113 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %108
  br label %190

115:                                              ; preds = %93, %90
  %116 = load i32, i32* %4, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = load i32, i32* %5, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i32, i32* %6, align 4
  %123 = icmp eq i32 %122, 4
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load %struct.fontlist*, %struct.fontlist** %2, align 8
  %126 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  br label %189

127:                                              ; preds = %121, %118, %115
  %128 = load i32, i32* %4, align 4
  %129 = icmp eq i32 %128, 83
  br i1 %129, label %130, label %142

130:                                              ; preds = %127
  %131 = load i32, i32* %5, align 4
  %132 = icmp eq i32 %131, 84
  br i1 %132, label %133, label %142

133:                                              ; preds = %130
  %134 = load i32, i32* %6, align 4
  %135 = icmp eq i32 %134, 65
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load i32, i32* %7, align 4
  %138 = icmp eq i32 %137, 82
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load %struct.fontlist*, %struct.fontlist** %2, align 8
  %141 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %140, i32 0, i32 2
  store i32 1, i32* %141, align 8
  br label %188

142:                                              ; preds = %136, %133, %130, %127
  %143 = load i32, i32* %4, align 4
  %144 = icmp eq i32 %143, 80
  br i1 %144, label %145, label %157

145:                                              ; preds = %142
  %146 = load i32, i32* %5, align 4
  %147 = icmp eq i32 %146, 70
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load i32, i32* %6, align 4
  %150 = icmp eq i32 %149, 82
  br i1 %150, label %151, label %157

151:                                              ; preds = %148
  %152 = load i32, i32* %7, align 4
  %153 = icmp eq i32 %152, 48
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load %struct.fontlist*, %struct.fontlist** %2, align 8
  %156 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %155, i32 0, i32 0
  store i32 1, i32* %156, align 8
  br label %187

157:                                              ; preds = %151, %148, %145, %142
  %158 = load i32, i32* %4, align 4
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %160, label %169

160:                                              ; preds = %157
  %161 = load i32, i32* %5, align 4
  %162 = icmp eq i32 %161, 102
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load i32, i32* %6, align 4
  %165 = icmp eq i32 %164, 99
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* %7, align 4
  %168 = icmp eq i32 %167, 112
  br i1 %168, label %175, label %169

169:                                              ; preds = %166, %163, %160, %157
  %170 = load i32, i32* %4, align 4
  %171 = icmp eq i32 %170, 77
  br i1 %171, label %172, label %178

172:                                              ; preds = %169
  %173 = load i32, i32* %5, align 4
  %174 = icmp eq i32 %173, 90
  br i1 %174, label %175, label %178

175:                                              ; preds = %172, %166
  %176 = load %struct.fontlist*, %struct.fontlist** %2, align 8
  %177 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %176, i32 0, i32 0
  store i32 1, i32* %177, align 8
  br label %186

178:                                              ; preds = %172, %169
  %179 = load i32, i32* @stderr, align 4
  %180 = load %struct.fontlist*, %struct.fontlist** %2, align 8
  %181 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %180, i32 0, i32 3
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @fprintf(i32 %179, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %182)
  %184 = load %struct.fontlist*, %struct.fontlist** %2, align 8
  %185 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %184, i32 0, i32 0
  store i32 1, i32* %185, align 8
  br label %186

186:                                              ; preds = %178, %175
  br label %187

187:                                              ; preds = %186, %154
  br label %188

188:                                              ; preds = %187, %139
  br label %189

189:                                              ; preds = %188, %124
  br label %190

190:                                              ; preds = %189, %114
  br label %191

191:                                              ; preds = %190, %87
  br label %192

192:                                              ; preds = %191, %78
  br label %201

193:                                              ; preds = %1
  %194 = load i32, i32* @stderr, align 4
  %195 = load %struct.fontlist*, %struct.fontlist** %2, align 8
  %196 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %195, i32 0, i32 3
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @fprintf(i32 %194, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %197)
  %199 = load %struct.fontlist*, %struct.fontlist** %2, align 8
  %200 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %199, i32 0, i32 0
  store i32 1, i32* %200, align 8
  br label %201

201:                                              ; preds = %193, %192
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
