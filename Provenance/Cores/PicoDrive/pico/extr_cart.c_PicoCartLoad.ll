; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_cart.c_PicoCartLoad.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_cart.c_PicoCartLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@EL_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"out of memory (wanted %i)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"read failed\00", align 1
@PicoAHW = common dso_local global i32 0, align 4
@PAHW_MCD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"BOOT\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"SMD format detected.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PicoCartLoad(%struct.TYPE_4__* %0, i8** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %177

19:                                               ; preds = %4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %177

26:                                               ; preds = %19
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, 3
  %29 = and i32 %28, -4
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i8* @PicoCartAlloc(i32 %30, i32 %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i32, i32* @EL_STATUS, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 (i32, i8*, ...) @elprintf(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 2, i32* %5, align 4
  br label %177

39:                                               ; preds = %26
  %40 = load i8*, i8** %10, align 8
  store i8* %40, i8** %14, align 8
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %65, %39
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp sgt i32 %45, 262144
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 262144, i32* %15, align 4
  br label %48

48:                                               ; preds = %47, %41
  %49 = load i8*, i8** %14, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = call i32 @pm_read(i8* %49, i32 %50, %struct.TYPE_4__* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i8*, i8** %14, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %14, align 8
  %60 = load i32, i32* %12, align 4
  %61 = mul nsw i32 %60, 100
  %62 = load i32, i32* %11, align 4
  %63 = sdiv i32 %61, %62
  %64 = call i32 @PicoCartLoadProgressCB(i32 %63)
  br label %65

65:                                               ; preds = %48
  %66 = load i32, i32* %13, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %41, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %12, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* @EL_STATUS, align 4
  %73 = call i32 (i32, i8*, ...) @elprintf(i32 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @free(i8* %74)
  store i32 3, i32* %5, align 4
  br label %177

76:                                               ; preds = %68
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %146, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @PicoAHW, align 4
  %81 = load i32, i32* @PAHW_MCD, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %101, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %11, align 4
  %86 = icmp eq i32 %85, 131072
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 292
  %90 = call i32 @strncmp(i8* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i8*, i8** %10, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 296
  %95 = call i32 @strncmp(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %92, %87
  %98 = load i32, i32* @PAHW_MCD, align 4
  %99 = load i32, i32* @PicoAHW, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* @PicoAHW, align 4
  br label %101

101:                                              ; preds = %97, %92, %84, %79
  %102 = load i32, i32* %11, align 4
  %103 = icmp sge i32 %102, 16896
  br i1 %103, label %104, label %140

104:                                              ; preds = %101
  %105 = load i32, i32* %11, align 4
  %106 = and i32 %105, 16383
  %107 = icmp eq i32 %106, 512
  br i1 %107, label %108, label %140

108:                                              ; preds = %104
  %109 = load i8*, i8** %10, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 8832
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp eq i32 %112, 83
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load i8*, i8** %10, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 640
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp eq i32 %118, 69
  br i1 %119, label %132, label %120

120:                                              ; preds = %114, %108
  %121 = load i8*, i8** %10, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 640
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp eq i32 %124, 83
  br i1 %125, label %126, label %140

126:                                              ; preds = %120
  %127 = load i8*, i8** %10, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 8833
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp eq i32 %130, 69
  br i1 %131, label %132, label %140

132:                                              ; preds = %126, %114
  %133 = load i32, i32* @EL_STATUS, align 4
  %134 = call i32 (i32, i8*, ...) @elprintf(i32 %133, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %135 = load i8*, i8** %10, align 8
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @DecodeSmd(i8* %135, i32 %136)
  %138 = load i32, i32* %11, align 4
  %139 = sub nsw i32 %138, 512
  store i32 %139, i32* %11, align 4
  br label %145

140:                                              ; preds = %126, %120, %104, %101
  %141 = load i8*, i8** %10, align 8
  %142 = load i8*, i8** %10, align 8
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @Byteswap(i8* %141, i8* %142, i32 %143)
  br label %145

145:                                              ; preds = %140, %132
  br label %164

146:                                              ; preds = %76
  %147 = load i32, i32* %11, align 4
  %148 = icmp sge i32 %147, 16896
  br i1 %148, label %149, label %163

149:                                              ; preds = %146
  %150 = load i32, i32* %11, align 4
  %151 = and i32 %150, 16383
  %152 = icmp eq i32 %151, 512
  br i1 %152, label %153, label %163

153:                                              ; preds = %149
  %154 = load i32, i32* @EL_STATUS, align 4
  %155 = call i32 (i32, i8*, ...) @elprintf(i32 %154, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %156 = load i32, i32* %11, align 4
  %157 = sub nsw i32 %156, 512
  store i32 %157, i32* %11, align 4
  %158 = load i8*, i8** %10, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 512
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @memmove(i8* %158, i8* %160, i32 %161)
  br label %163

163:                                              ; preds = %153, %149, %146
  br label %164

164:                                              ; preds = %163, %145
  %165 = load i8**, i8*** %7, align 8
  %166 = icmp ne i8** %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i8*, i8** %10, align 8
  %169 = load i8**, i8*** %7, align 8
  store i8* %168, i8** %169, align 8
  br label %170

170:                                              ; preds = %167, %164
  %171 = load i32*, i32** %8, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i32, i32* %11, align 4
  %175 = load i32*, i32** %8, align 8
  store i32 %174, i32* %175, align 4
  br label %176

176:                                              ; preds = %173, %170
  store i32 0, i32* %5, align 4
  br label %177

177:                                              ; preds = %176, %71, %35, %25, %18
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local i8* @PicoCartAlloc(i32, i32) #1

declare dso_local i32 @elprintf(i32, i8*, ...) #1

declare dso_local i32 @pm_read(i8*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @PicoCartLoadProgressCB(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @DecodeSmd(i8*, i32) #1

declare dso_local i32 @Byteswap(i8*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
