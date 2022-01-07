; ModuleID = '/home/carl/AnghaBench/DOOM/sndserv/extr_soundsrv.c_grabdata.c'
source_filename = "/home/carl/AnghaBench/DOOM/sndserv/extr_soundsrv.c_grabdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.TYPE_2__*, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"DOOMWADDIR\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%s/doom1.wad\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%s/doom2.wad\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"%s/doom2f.wad\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"%s/doomu.wad\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%s/doom.wad\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"-quiet\00", align 1
@snd_verbose = common dso_local global i64 0, align 8
@NUMSFX = common dso_local global i32 0, align 4
@numsounds = common dso_local global i32 0, align 4
@longsound = common dso_local global i64 0, align 8
@R_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"Could not find wadfile anywhere\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"loading from [%s]\0A\00", align 1
@S_sfx = common dso_local global %struct.TYPE_2__* null, align 8
@lengths = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grabdata(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %13 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %12, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %17

17:                                               ; preds = %16, %2
  %18 = load i8*, i8** %12, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = add nsw i64 %19, 1
  %21 = add nsw i64 %20, 9
  %22 = add nsw i64 %21, 1
  %23 = call i8* @malloc(i64 %22)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  %27 = load i8*, i8** %12, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = add nsw i64 %28, 1
  %30 = add nsw i64 %29, 9
  %31 = add nsw i64 %30, 1
  %32 = call i8* @malloc(i64 %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  %36 = load i8*, i8** %12, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = add nsw i64 %37, 1
  %39 = add nsw i64 %38, 10
  %40 = add nsw i64 %39, 1
  %41 = call i8* @malloc(i64 %40)
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %43)
  %45 = load i8*, i8** %12, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = add nsw i64 %46, 1
  %48 = add nsw i64 %47, 8
  %49 = add nsw i64 %48, 1
  %50 = call i8* @malloc(i64 %49)
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %52)
  %54 = load i8*, i8** %12, align 8
  %55 = call i64 @strlen(i8* %54)
  %56 = add nsw i64 %55, 1
  %57 = add nsw i64 %56, 8
  %58 = add nsw i64 %57, 1
  %59 = call i8* @malloc(i64 %58)
  store i8* %59, i8** %8, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 @sprintf(i8* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %61)
  store i32 1, i32* %5, align 4
  br label %63

63:                                               ; preds = %77, %17
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %3, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load i8**, i8*** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %67
  store i64 0, i64* @snd_verbose, align 8
  br label %76

76:                                               ; preds = %75, %67
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %63

80:                                               ; preds = %63
  %81 = load i32, i32* @NUMSFX, align 4
  store i32 %81, i32* @numsounds, align 4
  store i64 0, i64* @longsound, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* @R_OK, align 4
  %84 = call i32 @access(i8* %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %80
  %87 = load i8*, i8** %11, align 8
  store i8* %87, i8** %6, align 8
  br label %124

88:                                               ; preds = %80
  %89 = load i8*, i8** %10, align 8
  %90 = load i32, i32* @R_OK, align 4
  %91 = call i32 @access(i8* %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = load i8*, i8** %10, align 8
  store i8* %94, i8** %6, align 8
  br label %123

95:                                               ; preds = %88
  %96 = load i8*, i8** %9, align 8
  %97 = load i32, i32* @R_OK, align 4
  %98 = call i32 @access(i8* %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = load i8*, i8** %9, align 8
  store i8* %101, i8** %6, align 8
  br label %122

102:                                              ; preds = %95
  %103 = load i8*, i8** %8, align 8
  %104 = load i32, i32* @R_OK, align 4
  %105 = call i32 @access(i8* %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %102
  %108 = load i8*, i8** %8, align 8
  store i8* %108, i8** %6, align 8
  br label %121

109:                                              ; preds = %102
  %110 = load i8*, i8** %7, align 8
  %111 = load i32, i32* @R_OK, align 4
  %112 = call i32 @access(i8* %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %109
  %115 = load i8*, i8** %7, align 8
  store i8* %115, i8** %6, align 8
  br label %120

116:                                              ; preds = %109
  %117 = load i32, i32* @stderr, align 4
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %119 = call i32 @exit(i32 -1) #3
  unreachable

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120, %107
  br label %122

122:                                              ; preds = %121, %100
  br label %123

123:                                              ; preds = %122, %93
  br label %124

124:                                              ; preds = %123, %86
  %125 = load i8*, i8** %6, align 8
  %126 = call i32 @openwad(i8* %125)
  %127 = load i64, i64* @snd_verbose, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i32, i32* @stderr, align 4
  %131 = load i8*, i8** %6, align 8
  %132 = call i32 (i32, i8*, ...) @fprintf(i32 %130, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %131)
  br label %133

133:                                              ; preds = %129, %124
  store i32 1, i32* %5, align 4
  br label %134

134:                                              ; preds = %211, %133
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @NUMSFX, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %214

138:                                              ; preds = %134
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_sfx, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = icmp ne %struct.TYPE_2__* %144, null
  br i1 %145, label %177, label %146

146:                                              ; preds = %138
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_sfx, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load i64*, i64** @lengths, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  %157 = call i32 @getsfx(i32 %152, i64* %156)
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_sfx, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  store i32 %157, i32* %162, align 8
  %163 = load i64, i64* @longsound, align 8
  %164 = load i64*, i64** @lengths, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = icmp slt i64 %163, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %146
  %171 = load i64*, i64** @lengths, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* @longsound, align 8
  br label %176

176:                                              ; preds = %170, %146
  br label %210

177:                                              ; preds = %138
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_sfx, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_sfx, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 1
  store i32 %185, i32* %190, align 8
  %191 = load i64*, i64** @lengths, align 8
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_sfx, align 8
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_sfx, align 8
  %199 = ptrtoint %struct.TYPE_2__* %197 to i64
  %200 = ptrtoint %struct.TYPE_2__* %198 to i64
  %201 = sub i64 %199, %200
  %202 = sdiv exact i64 %201, 16
  %203 = udiv i64 %202, 4
  %204 = getelementptr inbounds i64, i64* %191, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = load i64*, i64** @lengths, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64, i64* %206, i64 %208
  store i64 %205, i64* %209, align 8
  br label %210

210:                                              ; preds = %177, %176
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %5, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %5, align 4
  br label %134

214:                                              ; preds = %134
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @openwad(i8*) #1

declare dso_local i32 @getsfx(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
