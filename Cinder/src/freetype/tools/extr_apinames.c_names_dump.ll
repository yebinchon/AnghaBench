; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/tools/extr_apinames.c_names_dump.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/tools/extr_apinames.c_names_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [12 x i8] c"LIBRARY %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"DESCRIPTION  FreeType 2 DLL\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"EXPORTS\0A\00", align 1
@num_names = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@the_names = common dso_local global %struct.TYPE_2__* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"  _%s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"you must provide a DLL name with the -d option!\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"++_%s.%s.%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"  (%s)\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"  %s,\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"{\0A\09global:\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"\09\09%s;\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"\09local:\0A\09\09*;\0A};\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @names_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @names_dump(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [512 x i8], align 16
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %185 [
    i32 128, label %12
    i32 132, label %41
    i32 129, label %70
    i32 130, label %128
    i32 131, label %163
  ]

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32*, i32** %4, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %15, %12
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %37, %19
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @num_names, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_names, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %24

40:                                               ; preds = %24
  br label %203

41:                                               ; preds = %3
  %42 = load i8*, i8** %6, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32*, i32** %4, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 (i32*, i8*, ...) @fprintf(i32* %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %66, %48
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @num_names, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_names, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %53

69:                                               ; preds = %53
  br label %203

70:                                               ; preds = %3
  %71 = load i8*, i8** %6, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* @stderr, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i32*
  %77 = call i32 (i32*, i8*, ...) @fprintf(i32* %76, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %78 = call i32 @exit(i32 4) #3
  unreachable

79:                                               ; preds = %70
  %80 = load i8*, i8** %6, align 8
  %81 = call i8* @strchr(i8* %80, i8 signext 46)
  store i8* %81, i8** %8, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %103

84:                                               ; preds = %79
  %85 = load i8*, i8** %8, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp sgt i32 %91, 511
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  store i32 511, i32* %10, align 4
  br label %94

94:                                               ; preds = %93, %84
  %95 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @memcpy(i8* %95, i8* %96, i32 %97)
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 %100
  store i8 0, i8* %101, align 1
  %102 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  store i8* %102, i8** %6, align 8
  br label %103

103:                                              ; preds = %94, %79
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %124, %103
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @num_names, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %104
  %109 = load i32*, i32** %4, align 8
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_names, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_names, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i32*, i8*, ...) @fprintf(i32* %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %115, i8* %116, i8* %122)
  br label %124

124:                                              ; preds = %108
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %104

127:                                              ; preds = %104
  br label %203

128:                                              ; preds = %3
  %129 = load i8*, i8** %6, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i32*, i32** %4, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = call i32 (i32*, i8*, ...) @fprintf(i32* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %131, %128
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %150, %135
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @num_names, align 4
  %139 = sub nsw i32 %138, 1
  %140 = icmp slt i32 %137, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %136
  %142 = load i32*, i32** %4, align 8
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_names, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 (i32*, i8*, ...) @fprintf(i32* %142, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %148)
  br label %150

150:                                              ; preds = %141
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %7, align 4
  br label %136

153:                                              ; preds = %136
  %154 = load i32*, i32** %4, align 8
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_names, align 8
  %156 = load i32, i32* @num_names, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 (i32*, i8*, ...) @fprintf(i32* %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %161)
  br label %203

163:                                              ; preds = %3
  %164 = load i32*, i32** %4, align 8
  %165 = call i32 (i32*, i8*, ...) @fprintf(i32* %164, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %166

166:                                              ; preds = %179, %163
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @num_names, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %182

170:                                              ; preds = %166
  %171 = load i32*, i32** %4, align 8
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_names, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 (i32*, i8*, ...) @fprintf(i32* %171, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %177)
  br label %179

179:                                              ; preds = %170
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %7, align 4
  br label %166

182:                                              ; preds = %166
  %183 = load i32*, i32** %4, align 8
  %184 = call i32 (i32*, i8*, ...) @fprintf(i32* %183, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %203

185:                                              ; preds = %3
  store i32 0, i32* %7, align 4
  br label %186

186:                                              ; preds = %199, %185
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* @num_names, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %202

190:                                              ; preds = %186
  %191 = load i32*, i32** %4, align 8
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_names, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 (i32*, i8*, ...) @fprintf(i32* %191, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %197)
  br label %199

199:                                              ; preds = %190
  %200 = load i32, i32* %7, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %7, align 4
  br label %186

202:                                              ; preds = %186
  br label %203

203:                                              ; preds = %202, %182, %153, %127, %69, %40
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
