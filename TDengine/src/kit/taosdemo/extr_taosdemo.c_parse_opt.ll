; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/taosdemo/extr_taosdemo.c_parse_opt.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/taosdemo/extr_taosdemo.c_parse_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argp_state = type { %struct.arguments* }
%struct.arguments = type { i8*, i8*, i8*, i8*, i8*, i8**, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FLOAT\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"TINYINT\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"BOOL\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"SMALLINT\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"BIGINT\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"DOUBLE\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"BINARY\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Invalid data_type!\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c", \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"Invalid path %s\0A\00", align 1
@TSDB_OPTION_CONFIGDIR = common dso_local global i32 0, align 4
@ARGP_ERR_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.argp_state*)* @parse_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_opt(i32 %0, i8* %1, %struct.argp_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.argp_state*, align 8
  %8 = alloca %struct.arguments*, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.argp_state* %2, %struct.argp_state** %7, align 8
  %15 = load %struct.argp_state*, %struct.argp_state** %7, align 8
  %16 = getelementptr inbounds %struct.argp_state, %struct.argp_state* %15, i32 0, i32 0
  %17 = load %struct.arguments*, %struct.arguments** %16, align 8
  store %struct.arguments* %17, %struct.arguments** %8, align 8
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %210 [
    i32 104, label %19
    i32 112, label %23
    i32 117, label %28
    i32 97, label %32
    i32 111, label %36
    i32 113, label %40
    i32 99, label %45
    i32 114, label %50
    i32 116, label %55
    i32 110, label %60
    i32 100, label %65
    i32 108, label %69
    i32 98, label %74
    i32 119, label %173
    i32 109, label %178
    i32 77, label %182
    i32 120, label %185
    i32 102, label %188
    i32 128, label %204
    i32 129, label %207
  ]

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.arguments*, %struct.arguments** %8, align 8
  %22 = getelementptr inbounds %struct.arguments, %struct.arguments* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  br label %212

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @atoi(i8* %24)
  %26 = load %struct.arguments*, %struct.arguments** %8, align 8
  %27 = getelementptr inbounds %struct.arguments, %struct.arguments* %26, i32 0, i32 17
  store i8* %25, i8** %27, align 8
  br label %212

28:                                               ; preds = %3
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.arguments*, %struct.arguments** %8, align 8
  %31 = getelementptr inbounds %struct.arguments, %struct.arguments* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  br label %212

32:                                               ; preds = %3
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.arguments*, %struct.arguments** %8, align 8
  %35 = getelementptr inbounds %struct.arguments, %struct.arguments* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  br label %212

36:                                               ; preds = %3
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.arguments*, %struct.arguments** %8, align 8
  %39 = getelementptr inbounds %struct.arguments, %struct.arguments* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  br label %212

40:                                               ; preds = %3
  %41 = load i8*, i8** %6, align 8
  %42 = call i8* @atoi(i8* %41)
  %43 = load %struct.arguments*, %struct.arguments** %8, align 8
  %44 = getelementptr inbounds %struct.arguments, %struct.arguments* %43, i32 0, i32 16
  store i8* %42, i8** %44, align 8
  br label %212

45:                                               ; preds = %3
  %46 = load i8*, i8** %6, align 8
  %47 = call i8* @atoi(i8* %46)
  %48 = load %struct.arguments*, %struct.arguments** %8, align 8
  %49 = getelementptr inbounds %struct.arguments, %struct.arguments* %48, i32 0, i32 15
  store i8* %47, i8** %49, align 8
  br label %212

50:                                               ; preds = %3
  %51 = load i8*, i8** %6, align 8
  %52 = call i8* @atoi(i8* %51)
  %53 = load %struct.arguments*, %struct.arguments** %8, align 8
  %54 = getelementptr inbounds %struct.arguments, %struct.arguments* %53, i32 0, i32 14
  store i8* %52, i8** %54, align 8
  br label %212

55:                                               ; preds = %3
  %56 = load i8*, i8** %6, align 8
  %57 = call i8* @atoi(i8* %56)
  %58 = load %struct.arguments*, %struct.arguments** %8, align 8
  %59 = getelementptr inbounds %struct.arguments, %struct.arguments* %58, i32 0, i32 13
  store i8* %57, i8** %59, align 8
  br label %212

60:                                               ; preds = %3
  %61 = load i8*, i8** %6, align 8
  %62 = call i8* @atoi(i8* %61)
  %63 = load %struct.arguments*, %struct.arguments** %8, align 8
  %64 = getelementptr inbounds %struct.arguments, %struct.arguments* %63, i32 0, i32 12
  store i8* %62, i8** %64, align 8
  br label %212

65:                                               ; preds = %3
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.arguments*, %struct.arguments** %8, align 8
  %68 = getelementptr inbounds %struct.arguments, %struct.arguments* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  br label %212

69:                                               ; preds = %3
  %70 = load i8*, i8** %6, align 8
  %71 = call i8* @atoi(i8* %70)
  %72 = load %struct.arguments*, %struct.arguments** %8, align 8
  %73 = getelementptr inbounds %struct.arguments, %struct.arguments* %72, i32 0, i32 11
  store i8* %71, i8** %73, align 8
  br label %212

74:                                               ; preds = %3
  %75 = load %struct.arguments*, %struct.arguments** %8, align 8
  %76 = getelementptr inbounds %struct.arguments, %struct.arguments* %75, i32 0, i32 5
  %77 = load i8**, i8*** %76, align 8
  store i8** %77, i8*** %10, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i32* @strstr(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %120

81:                                               ; preds = %74
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @strcasecmp(i8* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %116

85:                                               ; preds = %81
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @strcasecmp(i8* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %116

89:                                               ; preds = %85
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @strcasecmp(i8* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %89
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @strcasecmp(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %93
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @strcasecmp(i8* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %97
  %102 = load i8*, i8** %6, align 8
  %103 = call i32 @strcasecmp(i8* %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @strcasecmp(i8* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load i8*, i8** %6, align 8
  %111 = call i32 @strcasecmp(i8* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load %struct.argp_state*, %struct.argp_state** %7, align 8
  %115 = call i32 @argp_error(%struct.argp_state* %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %109, %105, %101, %97, %93, %89, %85, %81
  %117 = load i8*, i8** %6, align 8
  %118 = load i8**, i8*** %10, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 0
  store i8* %117, i8** %119, align 8
  br label %172

120:                                              ; preds = %74
  store i32 0, i32* %11, align 4
  %121 = load i8*, i8** %6, align 8
  %122 = call i8* @strdup(i8* %121)
  store i8* %122, i8** %12, align 8
  %123 = load i8*, i8** %12, align 8
  store i8* %123, i8** %13, align 8
  %124 = call i8* @strsep(i8** %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %124, i8** %14, align 8
  br label %125

125:                                              ; preds = %163, %120
  %126 = load i8*, i8** %14, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %171

128:                                              ; preds = %125
  %129 = load i8*, i8** %14, align 8
  %130 = call i32 @strcasecmp(i8* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %163

132:                                              ; preds = %128
  %133 = load i8*, i8** %14, align 8
  %134 = call i32 @strcasecmp(i8* %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %163

136:                                              ; preds = %132
  %137 = load i8*, i8** %14, align 8
  %138 = call i32 @strcasecmp(i8* %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %163

140:                                              ; preds = %136
  %141 = load i8*, i8** %14, align 8
  %142 = call i32 @strcasecmp(i8* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %163

144:                                              ; preds = %140
  %145 = load i8*, i8** %14, align 8
  %146 = call i32 @strcasecmp(i8* %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %144
  %149 = load i8*, i8** %14, align 8
  %150 = call i32 @strcasecmp(i8* %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %148
  %153 = load i8*, i8** %14, align 8
  %154 = call i32 @strcasecmp(i8* %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  %157 = load i8*, i8** %14, align 8
  %158 = call i32 @strcasecmp(i8* %157, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load %struct.argp_state*, %struct.argp_state** %7, align 8
  %162 = call i32 @argp_error(%struct.argp_state* %161, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %163

163:                                              ; preds = %160, %156, %152, %148, %144, %140, %136, %132, %128
  %164 = load i8*, i8** %14, align 8
  %165 = load i8**, i8*** %10, align 8
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %11, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i8*, i8** %165, i64 %168
  store i8* %164, i8** %169, align 8
  %170 = call i8* @strsep(i8** %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i8* %170, i8** %14, align 8
  br label %125

171:                                              ; preds = %125
  br label %172

172:                                              ; preds = %171, %116
  br label %212

173:                                              ; preds = %3
  %174 = load i8*, i8** %6, align 8
  %175 = call i8* @atoi(i8* %174)
  %176 = load %struct.arguments*, %struct.arguments** %8, align 8
  %177 = getelementptr inbounds %struct.arguments, %struct.arguments* %176, i32 0, i32 10
  store i8* %175, i8** %177, align 8
  br label %212

178:                                              ; preds = %3
  %179 = load i8*, i8** %6, align 8
  %180 = load %struct.arguments*, %struct.arguments** %8, align 8
  %181 = getelementptr inbounds %struct.arguments, %struct.arguments* %180, i32 0, i32 6
  store i8* %179, i8** %181, align 8
  br label %212

182:                                              ; preds = %3
  %183 = load %struct.arguments*, %struct.arguments** %8, align 8
  %184 = getelementptr inbounds %struct.arguments, %struct.arguments* %183, i32 0, i32 7
  store i32 1, i32* %184, align 8
  br label %212

185:                                              ; preds = %3
  %186 = load %struct.arguments*, %struct.arguments** %8, align 8
  %187 = getelementptr inbounds %struct.arguments, %struct.arguments* %186, i32 0, i32 8
  store i32 1, i32* %187, align 4
  br label %212

188:                                              ; preds = %3
  %189 = load i8*, i8** %6, align 8
  %190 = call i32 @wordexp(i8* %189, %struct.TYPE_4__* %9, i32 0)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %188
  %193 = load i32, i32* @stderr, align 4
  %194 = load i8*, i8** %6, align 8
  %195 = call i32 @fprintf(i32 %193, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %194)
  store i32 -1, i32* %4, align 4
  br label %213

196:                                              ; preds = %188
  %197 = load i32, i32* @TSDB_OPTION_CONFIGDIR, align 4
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @taos_options(i32 %197, i32 %201)
  %203 = call i32 @wordfree(%struct.TYPE_4__* %9)
  br label %212

204:                                              ; preds = %3
  %205 = load %struct.arguments*, %struct.arguments** %8, align 8
  %206 = getelementptr inbounds %struct.arguments, %struct.arguments* %205, i32 0, i32 9
  store i32 1, i32* %206, align 8
  br label %212

207:                                              ; preds = %3
  %208 = load %struct.argp_state*, %struct.argp_state** %7, align 8
  %209 = call i32 @argp_usage(%struct.argp_state* %208)
  br label %212

210:                                              ; preds = %3
  %211 = load i32, i32* @ARGP_ERR_UNKNOWN, align 4
  store i32 %211, i32* %4, align 4
  br label %213

212:                                              ; preds = %207, %204, %196, %185, %182, %178, %173, %172, %69, %65, %60, %55, %50, %45, %40, %36, %32, %28, %23, %19
  store i32 0, i32* %4, align 4
  br label %213

213:                                              ; preds = %212, %210, %192
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @argp_error(%struct.argp_state*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @wordexp(i8*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @taos_options(i32, i32) #1

declare dso_local i32 @wordfree(%struct.TYPE_4__*) #1

declare dso_local i32 @argp_usage(%struct.argp_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
