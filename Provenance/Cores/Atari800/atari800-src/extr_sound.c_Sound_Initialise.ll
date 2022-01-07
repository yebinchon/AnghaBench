; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sound.c_Sound_Initialise.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sound.c_Sound_Initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"-sound\00", align 1
@Sound_enabled = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"-nosound\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"-dsprate\00", align 1
@Sound_desired = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"-audio16\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"-audio8\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"snd-fragsize\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"\09-sound               Enable sound\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"\09-nosound             Disable sound\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"\09-dsprate <rate>      Set sound output frequency in Hz\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"\09-audio16             Set sound output format to 16-bit\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"\09-audio8              Set sound output format to 8-bit\00", align 1
@.str.12 = private unnamed_addr constant [76 x i8] c"\09-snd-fragsize <num>  Set size of the hardware sound buffer (fragment size)\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Missing argument for '%s'\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Invalid argument for '%s'\00", align 1
@Sound_latency = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Sound_Initialise(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %8, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %14

14:                                               ; preds = %175, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %178

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %21, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  store i32 1, i32* @Sound_enabled, align 4
  br label %150

36:                                               ; preds = %19
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 0, i32* @Sound_enabled, align 4
  br label %149

45:                                               ; preds = %36
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %45
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load i8**, i8*** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %57, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @Util_sscandec(i8* %62)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Sound_desired, i32 0, i32 0), align 4
  %65 = icmp eq i32 %64, -1
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %11, align 4
  br label %69

67:                                               ; preds = %53
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %67, %56
  br label %148

70:                                               ; preds = %45
  %71 = load i8**, i8*** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @strcmp(i8* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Sound_desired, i32 0, i32 1), align 4
  br label %147

79:                                               ; preds = %70
  %80 = load i8**, i8*** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @strcmp(i8* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Sound_desired, i32 0, i32 1), align 4
  br label %146

88:                                               ; preds = %79
  %89 = load i8**, i8*** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @strcmp(i8* %93, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %118

96:                                               ; preds = %88
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %96
  %100 = load i8**, i8*** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %100, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = call i8* @Util_sscandec(i8* %105)
  %107 = ptrtoint i8* %106 to i32
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %112

110:                                              ; preds = %99
  %111 = load i32, i32* @TRUE, align 4
  store i32 %111, i32* %11, align 4
  br label %114

112:                                              ; preds = %99
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Sound_desired, i32 0, i32 2), align 4
  br label %114

114:                                              ; preds = %112, %110
  br label %117

115:                                              ; preds = %96
  %116 = load i32, i32* @TRUE, align 4
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %115, %114
  br label %145

118:                                              ; preds = %88
  %119 = load i8**, i8*** %5, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @strcmp(i8* %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %118
  %127 = load i32, i32* @TRUE, align 4
  store i32 %127, i32* %8, align 4
  %128 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %129 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %130 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0))
  %131 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0))
  %132 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0))
  %133 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.12, i64 0, i64 0))
  br label %134

134:                                              ; preds = %126, %118
  %135 = load i8**, i8*** %5, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = load i8**, i8*** %5, align 8
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i8*, i8** %140, i64 %143
  store i8* %139, i8** %144, align 8
  br label %145

145:                                              ; preds = %134, %117
  br label %146

146:                                              ; preds = %145, %87
  br label %147

147:                                              ; preds = %146, %78
  br label %148

148:                                              ; preds = %147, %69
  br label %149

149:                                              ; preds = %148, %44
  br label %150

150:                                              ; preds = %149, %35
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %150
  %154 = load i8**, i8*** %5, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i8* %158)
  %160 = load i32, i32* @FALSE, align 4
  store i32 %160, i32* %3, align 4
  br label %187

161:                                              ; preds = %150
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %161
  %165 = load i8**, i8*** %5, align 8
  %166 = load i32, i32* %6, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %165, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i8* %170)
  %172 = load i32, i32* @FALSE, align 4
  store i32 %172, i32* %3, align 4
  br label %187

173:                                              ; preds = %161
  br label %174

174:                                              ; preds = %173
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %14

178:                                              ; preds = %14
  %179 = load i32, i32* %7, align 4
  %180 = load i32*, i32** %4, align 8
  store i32 %179, i32* %180, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = load i32, i32* @FALSE, align 4
  store i32 %184, i32* @Sound_enabled, align 4
  br label %185

185:                                              ; preds = %183, %178
  %186 = load i32, i32* @TRUE, align 4
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %185, %164, %153
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @Util_sscandec(i8*) #1

declare dso_local i32 @Log_print(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
