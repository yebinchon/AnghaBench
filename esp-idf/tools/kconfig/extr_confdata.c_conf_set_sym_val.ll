; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_confdata.c_conf_set_sym_val.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_confdata.c_conf_set_sym_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@mod = common dso_local global i32 0, align 4
@yes = common dso_local global i32 0, align 4
@no = common dso_local global i32 0, align 4
@S_DEF_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"symbol value '%s' invalid for %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\22\\\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid string found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symbol*, i32, i32, i8*)* @conf_set_sym_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_set_sym_val(%struct.symbol* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.symbol* %0, %struct.symbol** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.symbol*, %struct.symbol** %6, align 8
  %12 = getelementptr inbounds %struct.symbol, %struct.symbol* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %194 [
    i32 128, label %14
    i32 133, label %35
    i32 130, label %92
    i32 129, label %120
    i32 131, label %161
    i32 132, label %161
  ]

14:                                               ; preds = %4
  %15 = load i8*, i8** %9, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 109
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load i32, i32* @mod, align 4
  %22 = load %struct.symbol*, %struct.symbol** %6, align 8
  %23 = getelementptr inbounds %struct.symbol, %struct.symbol* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %21, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.symbol*, %struct.symbol** %6, align 8
  %31 = getelementptr inbounds %struct.symbol, %struct.symbol* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %195

34:                                               ; preds = %14
  br label %35

35:                                               ; preds = %4, %34
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 121
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load i32, i32* @yes, align 4
  %43 = load %struct.symbol*, %struct.symbol** %6, align 8
  %44 = getelementptr inbounds %struct.symbol, %struct.symbol* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %42, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.symbol*, %struct.symbol** %6, align 8
  %52 = getelementptr inbounds %struct.symbol, %struct.symbol* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %195

55:                                               ; preds = %35
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 110
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %61, %55
  %68 = load i32, i32* @no, align 4
  %69 = load %struct.symbol*, %struct.symbol** %6, align 8
  %70 = getelementptr inbounds %struct.symbol, %struct.symbol* %69, i32 0, i32 3
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i32 %68, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.symbol*, %struct.symbol** %6, align 8
  %78 = getelementptr inbounds %struct.symbol, %struct.symbol* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %195

81:                                               ; preds = %61
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @S_DEF_AUTO, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load i8*, i8** %9, align 8
  %87 = load %struct.symbol*, %struct.symbol** %6, align 8
  %88 = getelementptr inbounds %struct.symbol, %struct.symbol* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i8*, ...) @conf_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %86, i32 %89)
  br label %91

91:                                               ; preds = %85, %81
  store i32 1, i32* %5, align 4
  br label %196

92:                                               ; preds = %4
  %93 = load i8*, i8** %9, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 34
  br i1 %96, label %97, label %119

97:                                               ; preds = %92
  %98 = load i8*, i8** %9, align 8
  store i8* %98, i8** %10, align 8
  br label %99

99:                                               ; preds = %113, %97
  %100 = load i8*, i8** %10, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i8*, i8** %10, align 8
  %106 = load i8, i8* %105, align 1
  %107 = call i32 @isspace(i8 signext %106)
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  br label %110

110:                                              ; preds = %104, %99
  %111 = phi i1 [ false, %99 ], [ %109, %104 ]
  br i1 %111, label %112, label %116

112:                                              ; preds = %110
  br label %113

113:                                              ; preds = %112
  %114 = load i8*, i8** %10, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %10, align 8
  br label %99

116:                                              ; preds = %110
  %117 = load %struct.symbol*, %struct.symbol** %6, align 8
  %118 = getelementptr inbounds %struct.symbol, %struct.symbol* %117, i32 0, i32 0
  store i32 129, i32* %118, align 8
  br label %162

119:                                              ; preds = %92
  br label %120

120:                                              ; preds = %4, %119
  %121 = load i8*, i8** %9, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %9, align 8
  %123 = load i8, i8* %121, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 34
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %195

127:                                              ; preds = %120
  %128 = load i8*, i8** %9, align 8
  store i8* %128, i8** %10, align 8
  br label %129

129:                                              ; preds = %147, %127
  %130 = load i8*, i8** %10, align 8
  %131 = call i8* @strpbrk(i8* %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %131, i8** %10, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %150

133:                                              ; preds = %129
  %134 = load i8*, i8** %10, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 34
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i8*, i8** %10, align 8
  store i8 0, i8* %139, align 1
  br label %150

140:                                              ; preds = %133
  %141 = load i8*, i8** %10, align 8
  %142 = load i8*, i8** %10, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8*, i8** %10, align 8
  %145 = call i32 @strlen(i8* %144)
  %146 = call i32 @memmove(i8* %141, i8* %143, i32 %145)
  br label %147

147:                                              ; preds = %140
  %148 = load i8*, i8** %10, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %10, align 8
  br label %129

150:                                              ; preds = %138, %129
  %151 = load i8*, i8** %10, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %160, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @S_DEF_AUTO, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = call i32 (i8*, ...) @conf_warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %153
  store i32 1, i32* %5, align 4
  br label %196

160:                                              ; preds = %150
  br label %161

161:                                              ; preds = %4, %4, %160
  br label %162

162:                                              ; preds = %161, %116
  %163 = load %struct.symbol*, %struct.symbol** %6, align 8
  %164 = load i8*, i8** %9, align 8
  %165 = call i32 @sym_string_valid(%struct.symbol* %163, i8* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %182

167:                                              ; preds = %162
  %168 = load i8*, i8** %9, align 8
  %169 = call i32 @strdup(i8* %168)
  %170 = load %struct.symbol*, %struct.symbol** %6, align 8
  %171 = getelementptr inbounds %struct.symbol, %struct.symbol* %170, i32 0, i32 3
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  store i32 %169, i32* %176, align 4
  %177 = load i32, i32* %8, align 4
  %178 = load %struct.symbol*, %struct.symbol** %6, align 8
  %179 = getelementptr inbounds %struct.symbol, %struct.symbol* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 4
  br label %193

182:                                              ; preds = %162
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @S_DEF_AUTO, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %182
  %187 = load i8*, i8** %9, align 8
  %188 = load %struct.symbol*, %struct.symbol** %6, align 8
  %189 = getelementptr inbounds %struct.symbol, %struct.symbol* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = call i32 (i8*, ...) @conf_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %187, i32 %190)
  br label %192

192:                                              ; preds = %186, %182
  store i32 1, i32* %5, align 4
  br label %196

193:                                              ; preds = %167
  br label %195

194:                                              ; preds = %4
  br label %195

195:                                              ; preds = %194, %193, %126, %67, %41, %20
  store i32 0, i32* %5, align 4
  br label %196

196:                                              ; preds = %195, %192, %159, %91
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local i32 @conf_warning(i8*, ...) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sym_string_valid(%struct.symbol*, i8*) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
