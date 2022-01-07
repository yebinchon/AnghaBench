; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_unix.c_frontend_unix_powerstate_check_apm.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_unix.c_frontend_unix_powerstate_check_apm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@proc_apm_path = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"min\00", align 1
@FRONTEND_POWERSTATE_NONE = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_NO_SOURCE = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_CHARGING = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_CHARGED = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_ON_POWER_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @frontend_unix_powerstate_check_apm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frontend_unix_powerstate_check_apm(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  %18 = load i32, i32* @proc_apm_path, align 4
  %19 = call i32 @filestream_exists(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %174

22:                                               ; preds = %3
  %23 = load i32, i32* @proc_apm_path, align 4
  %24 = call i32 @filestream_read_file(i32 %23, i8** %16, i32* %14)
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %174

27:                                               ; preds = %22
  %28 = load i8*, i8** %16, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8* %29, i8** %15, align 8
  %30 = call i32 @next_string(i8** %15, i8** %17)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %174

33:                                               ; preds = %27
  %34 = call i32 @next_string(i8** %15, i8** %17)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  br label %174

37:                                               ; preds = %33
  %38 = call i32 @next_string(i8** %15, i8** %17)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  br label %174

41:                                               ; preds = %37
  %42 = call i32 @next_string(i8** %15, i8** %17)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  br label %174

45:                                               ; preds = %41
  %46 = load i8*, i8** %17, align 8
  %47 = call i32 @int_string(i8* %46, i32* %9)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  br label %174

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50
  %52 = call i32 @next_string(i8** %15, i8** %17)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  br label %174

55:                                               ; preds = %51
  %56 = load i8*, i8** %17, align 8
  %57 = call i32 @int_string(i8* %56, i32* %10)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  br label %174

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60
  %62 = call i32 @next_string(i8** %15, i8** %17)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  br label %174

65:                                               ; preds = %61
  %66 = load i8*, i8** %17, align 8
  %67 = call i32 @int_string(i8* %66, i32* %11)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  br label %174

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70
  %72 = call i32 @next_string(i8** %15, i8** %17)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  br label %174

75:                                               ; preds = %71
  %76 = load i8*, i8** %17, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %8, align 8
  %80 = load i8*, i8** %17, align 8
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 37
  br i1 %85, label %86, label %90

86:                                               ; preds = %75
  %87 = load i8*, i8** %17, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8 0, i8* %89, align 1
  br label %90

90:                                               ; preds = %86, %75
  %91 = load i8*, i8** %17, align 8
  %92 = call i32 @int_string(i8* %91, i32* %12)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  br label %174

95:                                               ; preds = %90
  %96 = call i32 @next_string(i8** %15, i8** %17)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  br label %174

99:                                               ; preds = %95
  %100 = load i8*, i8** %17, align 8
  %101 = call i32 @int_string(i8* %100, i32* %13)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  br label %174

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104
  %106 = call i32 @next_string(i8** %15, i8** %17)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  br label %174

109:                                              ; preds = %105
  %110 = load i8*, i8** %17, align 8
  %111 = call i64 @string_is_equal(i8* %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32, i32* %13, align 4
  %115 = mul nsw i32 %114, 60
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %113, %109
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %11, align 4
  %119 = icmp eq i32 %118, 255
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* @FRONTEND_POWERSTATE_NONE, align 4
  %122 = load i32*, i32** %5, align 8
  store i32 %121, i32* %122, align 4
  br label %149

123:                                              ; preds = %117
  %124 = load i32, i32* %11, align 4
  %125 = and i32 %124, 128
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32, i32* @FRONTEND_POWERSTATE_NO_SOURCE, align 4
  %129 = load i32*, i32** %5, align 8
  store i32 %128, i32* %129, align 4
  br label %148

130:                                              ; preds = %123
  %131 = load i32, i32* %11, align 4
  %132 = and i32 %131, 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32, i32* @FRONTEND_POWERSTATE_CHARGING, align 4
  %136 = load i32*, i32** %5, align 8
  store i32 %135, i32* %136, align 4
  br label %147

137:                                              ; preds = %130
  %138 = load i32, i32* %9, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32, i32* @FRONTEND_POWERSTATE_CHARGED, align 4
  %142 = load i32*, i32** %5, align 8
  store i32 %141, i32* %142, align 4
  br label %146

143:                                              ; preds = %137
  %144 = load i32, i32* @FRONTEND_POWERSTATE_ON_POWER_SOURCE, align 4
  %145 = load i32*, i32** %5, align 8
  store i32 %144, i32* %145, align 4
  br label %146

146:                                              ; preds = %143, %140
  br label %147

147:                                              ; preds = %146, %134
  br label %148

148:                                              ; preds = %147, %127
  br label %149

149:                                              ; preds = %148, %120
  %150 = load i32, i32* %12, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %149
  %153 = load i32, i32* %12, align 4
  %154 = icmp sgt i32 %153, 100
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  br label %158

156:                                              ; preds = %152
  %157 = load i32, i32* %12, align 4
  br label %158

158:                                              ; preds = %156, %155
  %159 = phi i32 [ 100, %155 ], [ %157, %156 ]
  %160 = load i32*, i32** %7, align 8
  store i32 %159, i32* %160, align 4
  br label %161

161:                                              ; preds = %158, %149
  %162 = load i32, i32* %13, align 4
  %163 = icmp sge i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, i32* %13, align 4
  %166 = load i32*, i32** %6, align 8
  store i32 %165, i32* %166, align 4
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i8*, i8** %16, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i8*, i8** %16, align 8
  %172 = call i32 @free(i8* %171)
  br label %173

173:                                              ; preds = %170, %167
  store i8* null, i8** %16, align 8
  store i32 1, i32* %4, align 4
  br label %181

174:                                              ; preds = %108, %103, %98, %94, %74, %69, %64, %59, %54, %49, %44, %40, %36, %32, %26, %21
  %175 = load i8*, i8** %16, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i8*, i8** %16, align 8
  %179 = call i32 @free(i8* %178)
  br label %180

180:                                              ; preds = %177, %174
  store i8* null, i8** %16, align 8
  store i32 0, i32* %4, align 4
  br label %181

181:                                              ; preds = %180, %173
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @filestream_exists(i32) #1

declare dso_local i32 @filestream_read_file(i32, i8**, i32*) #1

declare dso_local i32 @next_string(i8**, i8**) #1

declare dso_local i32 @int_string(i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
