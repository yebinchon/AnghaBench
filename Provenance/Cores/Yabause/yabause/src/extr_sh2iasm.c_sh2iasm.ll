; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2iasm.c_sh2iasm.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2iasm.c_sh2iasm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"No opcode\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Arg 1\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Arg 2\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Invalid opcode. Likely doesn't exist or format is wrong\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sh2iasm(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [30 x i8], align 16
  %7 = alloca [30 x i8], align 16
  %8 = alloca [30 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__, align 8
  %15 = alloca %struct.TYPE_11__, align 8
  %16 = alloca %struct.TYPE_11__, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load i8*, i8** %4, align 8
  store i8* %22, i8** %9, align 8
  br label %23

23:                                               ; preds = %28, %2
  %24 = load i8*, i8** %9, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %9, align 8
  br label %23

31:                                               ; preds = %23
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %34 = call i32 @strip_opname(i8* %32, i8* %33)
  store i32 %34, i32* %11, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @asm_bad(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %37)
  store i32 0, i32* %3, align 4
  br label %199

39:                                               ; preds = %31
  %40 = load i32, i32* %11, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %9, align 8
  br label %44

44:                                               ; preds = %49, %39
  %45 = load i8*, i8** %9, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 32
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %9, align 8
  br label %44

52:                                               ; preds = %44
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %55 = call i32 @strip_arg(i8* %53, i8* %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %9, align 8
  br label %60

60:                                               ; preds = %65, %52
  %61 = load i8*, i8** %9, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 32
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %9, align 8
  br label %60

68:                                               ; preds = %60
  %69 = load i8*, i8** %9, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 44
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %9, align 8
  br label %76

76:                                               ; preds = %73, %68
  br label %77

77:                                               ; preds = %82, %76
  %78 = load i8*, i8** %9, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 32
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %9, align 8
  br label %77

85:                                               ; preds = %77
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 0
  %88 = call i32 @strip_arg(i8* %86, i8* %87)
  store i32 %88, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %105, %85
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %89
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = call signext i8 @tolower(i8 signext %100)
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 %103
  store i8 %101, i8* %104, align 1
  br label %105

105:                                              ; preds = %96
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %89

108:                                              ; preds = %89
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %125, %108
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %109
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = call signext i8 @tolower(i8 signext %120)
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 %123
  store i8 %121, i8* %124, align 1
  br label %125

125:                                              ; preds = %116
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %109

128:                                              ; preds = %109
  store i32 0, i32* %10, align 4
  br label %129

129:                                              ; preds = %145, %128
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %129
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = call signext i8 @tolower(i8 signext %140)
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 %143
  store i8 %141, i8* %144, align 1
  br label %145

145:                                              ; preds = %136
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %129

148:                                              ; preds = %129
  %149 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %150 = load i8*, i8** %5, align 8
  %151 = call i32 @parse_arg(i8* %149, %struct.TYPE_11__* %14, i8* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %162, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %155 = load i8, i8* %154, align 16
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load i8*, i8** %5, align 8
  %160 = call i32 @asm_bad(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %159)
  br label %161

161:                                              ; preds = %158, %153
  store i32 0, i32* %3, align 4
  br label %199

162:                                              ; preds = %148
  %163 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 0
  %164 = load i8*, i8** %5, align 8
  %165 = call i32 @parse_arg(i8* %163, %struct.TYPE_11__* %15, i8* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %176, label %167

167:                                              ; preds = %162
  %168 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 0
  %169 = load i8, i8* %168, align 16
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load i8*, i8** %5, align 8
  %174 = call i32 @asm_bad(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %173)
  br label %175

175:                                              ; preds = %172, %167
  store i32 0, i32* %3, align 4
  br label %199

176:                                              ; preds = %162
  %177 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %178 = call i32 @search_op(i8* %177, %struct.TYPE_11__* %14, %struct.TYPE_11__* %15, i32* %17)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %176
  %181 = load i8*, i8** %5, align 8
  %182 = call i32 @asm_bad(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i8* %181)
  store i32 0, i32* %3, align 4
  br label %199

183:                                              ; preds = %176
  store i32 0, i32* %10, align 4
  %184 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %185 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 0
  %186 = call i32 @rebuild_args(i8* %184, i8* %185, %struct.TYPE_11__* %14, %struct.TYPE_11__* %15, %struct.TYPE_11__* %16)
  %187 = load i32, i32* %17, align 4
  %188 = bitcast %struct.TYPE_11__* %14 to { i64, i64 }*
  %189 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %188, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = bitcast %struct.TYPE_11__* %15 to { i64, i64 }*
  %194 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %193, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @build_bytes(i32 %187, i64 %190, i64 %192, i64 %195, i64 %197, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %16)
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %183, %180, %175, %161, %36
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i32 @strip_opname(i8*, i8*) #1

declare dso_local i32 @asm_bad(i8*, i8*) #1

declare dso_local i32 @strip_arg(i8*, i8*) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @parse_arg(i8*, %struct.TYPE_11__*, i8*) #1

declare dso_local i32 @search_op(i8*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @rebuild_args(i8*, i8*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @build_bytes(i32, i64, i64, i64, i64, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
