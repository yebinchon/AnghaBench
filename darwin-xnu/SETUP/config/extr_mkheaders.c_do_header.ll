; ModuleID = '/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_mkheaders.c_do_header.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_mkheaders.c_do_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_list = type { i8*, i32, %struct.file_list* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"#define %s %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"meta_features.h\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"#include <%s.h>\0A\00", align 1
@EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @do_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_header(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.file_list*, align 8
  %12 = alloca %struct.file_list*, align 8
  %13 = alloca %struct.file_list*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.file_list* null, %struct.file_list** %11, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @toheader(i8* %19)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i8*, i8** %4, align 8
  br label %27

25:                                               ; preds = %3
  %26 = load i8*, i8** %5, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i8* [ %24, %23 ], [ %26, %25 ]
  %29 = call i8* @tomacro(i8* %28)
  %30 = load i8*, i8** %4, align 8
  %31 = icmp eq i8* %30, null
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32* @fopen(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %36, i32** %14, align 8
  store i32 -1, i32* %17, align 4
  %37 = load i32*, i32** %14, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %72

39:                                               ; preds = %27
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @unlink(i8* %40)
  %42 = load i8*, i8** %7, align 8
  %43 = call i32* @fopen(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %43, i32** %15, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @perror(i8* %47)
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %39
  %51 = load i32*, i32** %15, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %52, i32 %53)
  %55 = load i32*, i32** %15, align 8
  %56 = call i32 @fclose(i32* %55)
  %57 = call i8* @path(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i8* %57, i8** %7, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32* @fopen(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %59, i32** %15, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @perror(i8* %63)
  %65 = call i32 @exit(i32 1) #3
  unreachable

66:                                               ; preds = %50
  %67 = load i32*, i32** %15, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %68)
  %70 = load i32*, i32** %15, align 8
  %71 = call i32 @fclose(i32* %70)
  br label %213

72:                                               ; preds = %27
  store %struct.file_list* null, %struct.file_list** %12, align 8
  br label %73

73:                                               ; preds = %124, %72
  %74 = load i32*, i32** %14, align 8
  %75 = call i8* @get_word(i32* %74)
  store i8* %75, i8** %9, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = load i8*, i8** %9, align 8
  %79 = load i64, i64* @EOF, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = icmp eq i8* %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77, %73
  br label %137

83:                                               ; preds = %77
  %84 = load i32*, i32** %14, align 8
  %85 = call i8* @get_word(i32* %84)
  store i8* %85, i8** %9, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %83
  %88 = load i8*, i8** %9, align 8
  %89 = load i64, i64* @EOF, align 8
  %90 = inttoptr i64 %89 to i8*
  %91 = icmp eq i8* %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %87, %83
  br label %137

93:                                               ; preds = %87
  %94 = load i8*, i8** %9, align 8
  %95 = call i8* @ns(i8* %94)
  store i8* %95, i8** %10, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = call i8* @get_word(i32* %96)
  store i8* %97, i8** %18, align 8
  %98 = load i8*, i8** %18, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %93
  %101 = load i8*, i8** %18, align 8
  %102 = load i64, i64* @EOF, align 8
  %103 = inttoptr i64 %102 to i8*
  %104 = icmp eq i8* %101, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %100, %93
  br label %137

106:                                              ; preds = %100
  %107 = load i8*, i8** %18, align 8
  %108 = call i32 @atoi(i8* %107)
  store i32 %108, i32* %16, align 4
  %109 = load i8*, i8** %10, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = call i64 @eq(i8* %109, i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load i32, i32* %16, align 4
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %16, align 4
  br label %116

116:                                              ; preds = %113, %106
  %117 = load i32*, i32** %14, align 8
  %118 = call i8* @get_word(i32* %117)
  store i8* %118, i8** %18, align 8
  %119 = load i8*, i8** %18, align 8
  %120 = load i64, i64* @EOF, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = icmp eq i8* %119, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %137

124:                                              ; preds = %116
  %125 = call i64 @malloc(i32 24)
  %126 = inttoptr i64 %125 to %struct.file_list*
  store %struct.file_list* %126, %struct.file_list** %11, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = load %struct.file_list*, %struct.file_list** %11, align 8
  %129 = getelementptr inbounds %struct.file_list, %struct.file_list* %128, i32 0, i32 0
  store i8* %127, i8** %129, align 8
  %130 = load i32, i32* %16, align 4
  %131 = load %struct.file_list*, %struct.file_list** %11, align 8
  %132 = getelementptr inbounds %struct.file_list, %struct.file_list* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 8
  %133 = load %struct.file_list*, %struct.file_list** %12, align 8
  %134 = load %struct.file_list*, %struct.file_list** %11, align 8
  %135 = getelementptr inbounds %struct.file_list, %struct.file_list* %134, i32 0, i32 2
  store %struct.file_list* %133, %struct.file_list** %135, align 8
  %136 = load %struct.file_list*, %struct.file_list** %11, align 8
  store %struct.file_list* %136, %struct.file_list** %12, align 8
  br label %73

137:                                              ; preds = %123, %105, %92, %82
  %138 = load i32*, i32** %14, align 8
  %139 = call i32 @fclose(i32* %138)
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %17, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %156

143:                                              ; preds = %137
  br label %144

144:                                              ; preds = %147, %143
  %145 = load %struct.file_list*, %struct.file_list** %11, align 8
  %146 = icmp ne %struct.file_list* %145, null
  br i1 %146, label %147, label %155

147:                                              ; preds = %144
  %148 = load %struct.file_list*, %struct.file_list** %11, align 8
  store %struct.file_list* %148, %struct.file_list** %13, align 8
  %149 = load %struct.file_list*, %struct.file_list** %11, align 8
  %150 = getelementptr inbounds %struct.file_list, %struct.file_list* %149, i32 0, i32 2
  %151 = load %struct.file_list*, %struct.file_list** %150, align 8
  store %struct.file_list* %151, %struct.file_list** %11, align 8
  %152 = load %struct.file_list*, %struct.file_list** %13, align 8
  %153 = bitcast %struct.file_list* %152 to i8*
  %154 = call i32 @free(i8* %153)
  br label %144

155:                                              ; preds = %144
  br label %213

156:                                              ; preds = %137
  %157 = load i32, i32* %17, align 4
  %158 = icmp eq i32 %157, -1
  br i1 %158, label %159, label %172

159:                                              ; preds = %156
  %160 = call i64 @malloc(i32 24)
  %161 = inttoptr i64 %160 to %struct.file_list*
  store %struct.file_list* %161, %struct.file_list** %11, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = load %struct.file_list*, %struct.file_list** %11, align 8
  %164 = getelementptr inbounds %struct.file_list, %struct.file_list* %163, i32 0, i32 0
  store i8* %162, i8** %164, align 8
  %165 = load i32, i32* %6, align 4
  %166 = load %struct.file_list*, %struct.file_list** %11, align 8
  %167 = getelementptr inbounds %struct.file_list, %struct.file_list* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 8
  %168 = load %struct.file_list*, %struct.file_list** %12, align 8
  %169 = load %struct.file_list*, %struct.file_list** %11, align 8
  %170 = getelementptr inbounds %struct.file_list, %struct.file_list* %169, i32 0, i32 2
  store %struct.file_list* %168, %struct.file_list** %170, align 8
  %171 = load %struct.file_list*, %struct.file_list** %11, align 8
  store %struct.file_list* %171, %struct.file_list** %12, align 8
  br label %172

172:                                              ; preds = %159, %156
  %173 = load i8*, i8** %7, align 8
  %174 = call i32 @unlink(i8* %173)
  %175 = load i8*, i8** %7, align 8
  %176 = call i32* @fopen(i8* %175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %176, i32** %15, align 8
  %177 = load i32*, i32** %15, align 8
  %178 = icmp eq i32* %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %172
  %180 = load i8*, i8** %7, align 8
  %181 = call i32 @perror(i8* %180)
  %182 = call i32 @exit(i32 1) #3
  unreachable

183:                                              ; preds = %172
  %184 = load %struct.file_list*, %struct.file_list** %12, align 8
  store %struct.file_list* %184, %struct.file_list** %11, align 8
  br label %185

185:                                              ; preds = %206, %183
  %186 = load %struct.file_list*, %struct.file_list** %11, align 8
  %187 = icmp ne %struct.file_list* %186, null
  br i1 %187, label %188, label %210

188:                                              ; preds = %185
  %189 = load i32*, i32** %15, align 8
  %190 = load %struct.file_list*, %struct.file_list** %11, align 8
  %191 = getelementptr inbounds %struct.file_list, %struct.file_list* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = load i32, i32* %6, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %188
  %196 = load %struct.file_list*, %struct.file_list** %11, align 8
  %197 = getelementptr inbounds %struct.file_list, %struct.file_list* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  br label %200

199:                                              ; preds = %188
  br label %200

200:                                              ; preds = %199, %195
  %201 = phi i32 [ %198, %195 ], [ 0, %199 ]
  %202 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %189, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %192, i32 %201)
  %203 = load %struct.file_list*, %struct.file_list** %11, align 8
  %204 = bitcast %struct.file_list* %203 to i8*
  %205 = call i32 @free(i8* %204)
  br label %206

206:                                              ; preds = %200
  %207 = load %struct.file_list*, %struct.file_list** %11, align 8
  %208 = getelementptr inbounds %struct.file_list, %struct.file_list* %207, i32 0, i32 2
  %209 = load %struct.file_list*, %struct.file_list** %208, align 8
  store %struct.file_list* %209, %struct.file_list** %11, align 8
  br label %185

210:                                              ; preds = %185
  %211 = load i32*, i32** %15, align 8
  %212 = call i32 @fclose(i32* %211)
  br label %213

213:                                              ; preds = %210, %155, %66
  ret void
}

declare dso_local i8* @toheader(i8*) #1

declare dso_local i8* @tomacro(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @path(i8*) #1

declare dso_local i8* @get_word(i32*) #1

declare dso_local i8* @ns(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @eq(i8*, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
