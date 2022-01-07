; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_netagent_applies_to_client.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_netagent_applies_to_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_client = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.necp_client_parsed_parameters = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@NETAGENT_FLAG_REGISTERED = common dso_local global i32 0, align 4
@NETAGENT_FLAG_NEXUS_PROVIDER = common dso_local global i32 0, align 4
@NETAGENT_FLAG_SPECIFIC_USE_ONLY = common dso_local global i32 0, align 4
@NECP_MAX_PARSED_PARAMETERS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@NETAGENT_DOMAINSIZE = common dso_local global i32 0, align 4
@NETAGENT_TYPESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.necp_client*, %struct.necp_client_parsed_parameters*, i32*, i32, i32, i32)* @necp_netagent_applies_to_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_netagent_applies_to_client(%struct.necp_client* %0, %struct.necp_client_parsed_parameters* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.necp_client*, align 8
  %9 = alloca %struct.necp_client_parsed_parameters*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.necp_client* %0, %struct.necp_client** %8, align 8
  store %struct.necp_client_parsed_parameters* %1, %struct.necp_client_parsed_parameters** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %14, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @netagent_get_flags(i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* @NETAGENT_FLAG_REGISTERED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %6
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %7, align 4
  br label %234

33:                                               ; preds = %6
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @NETAGENT_FLAG_NEXUS_PROVIDER, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %7, align 4
  br label %234

43:                                               ; preds = %36, %33
  %44 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %45 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @uuid_compare(i32 %47, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %43
  %53 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %54 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @netagent_get_generation(i32 %58)
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %7, align 4
  br label %234

63:                                               ; preds = %52
  %64 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %65 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @uuid_clear(i32 %67)
  %69 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %70 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %43
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* @NETAGENT_FLAG_SPECIFIC_USE_ONLY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %230

78:                                               ; preds = %73
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %16, align 4
  %80 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %9, align 8
  %81 = icmp ne %struct.necp_client_parsed_parameters* %80, null
  br i1 %81, label %82, label %228

82:                                               ; preds = %78
  store i32 0, i32* %17, align 4
  br label %83

83:                                               ; preds = %113, %82
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* @NECP_MAX_PARSED_PARAMETERS, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %116

87:                                               ; preds = %83
  %88 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %9, align 8
  %89 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @uuid_is_null(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %116

98:                                               ; preds = %87
  %99 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %9, align 8
  %100 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %17, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @uuid_compare(i32 %105, i32 %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %98
  %111 = load i32, i32* @TRUE, align 4
  store i32 %111, i32* %16, align 4
  br label %116

112:                                              ; preds = %98
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %17, align 4
  br label %83

116:                                              ; preds = %110, %97, %83
  %117 = load i32, i32* %16, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %227, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* @FALSE, align 4
  store i32 %120, i32* %18, align 4
  %121 = load i32, i32* @NETAGENT_DOMAINSIZE, align 4
  %122 = zext i32 %121 to i64
  %123 = call i8* @llvm.stacksave()
  store i8* %123, i8** %19, align 8
  %124 = alloca i8, i64 %122, align 16
  store i64 %122, i64* %20, align 8
  %125 = load i32, i32* @NETAGENT_TYPESIZE, align 4
  %126 = zext i32 %125 to i64
  %127 = alloca i8, i64 %126, align 16
  store i64 %126, i64* %21, align 8
  %128 = bitcast i8* %124 to i8**
  %129 = load i32, i32* @NETAGENT_DOMAINSIZE, align 4
  %130 = call i32 @memset(i8** %128, i32 0, i32 %129)
  %131 = bitcast i8* %127 to i8**
  %132 = load i32, i32* @NETAGENT_TYPESIZE, align 4
  %133 = call i32 @memset(i8** %131, i32 0, i32 %132)
  store i32 0, i32* %22, align 4
  br label %134

134:                                              ; preds = %222, %119
  %135 = load i32, i32* %22, align 4
  %136 = load i32, i32* @NECP_MAX_PARSED_PARAMETERS, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %225

138:                                              ; preds = %134
  %139 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %9, align 8
  %140 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %139, i32 0, i32 0
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i32, i32* %22, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @strlen(i32 %146)
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %160, label %149

149:                                              ; preds = %138
  %150 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %9, align 8
  %151 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %150, i32 0, i32 0
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = load i32, i32* %22, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @strlen(i32 %157)
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %149, %138
  br label %225

161:                                              ; preds = %149
  %162 = load i32, i32* %18, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %173, label %164

164:                                              ; preds = %161
  %165 = load i32*, i32** %10, align 8
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @netagent_get_agent_domain_and_type(i32 %166, i8* %124, i8* %127)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = load i32, i32* @TRUE, align 4
  store i32 %170, i32* %18, align 4
  br label %172

171:                                              ; preds = %164
  br label %225

172:                                              ; preds = %169
  br label %173

173:                                              ; preds = %172, %161
  %174 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %9, align 8
  %175 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %174, i32 0, i32 0
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = load i32, i32* %22, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @strlen(i32 %181)
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %196, label %184

184:                                              ; preds = %173
  %185 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %9, align 8
  %186 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %185, i32 0, i32 0
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = load i32, i32* %22, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @NETAGENT_DOMAINSIZE, align 4
  %194 = call i64 @strncmp(i8* %124, i32 %192, i32 %193)
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %221

196:                                              ; preds = %184, %173
  %197 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %9, align 8
  %198 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %197, i32 0, i32 0
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = load i32, i32* %22, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i64 @strlen(i32 %204)
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %219, label %207

207:                                              ; preds = %196
  %208 = load %struct.necp_client_parsed_parameters*, %struct.necp_client_parsed_parameters** %9, align 8
  %209 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %208, i32 0, i32 0
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = load i32, i32* %22, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @NETAGENT_TYPESIZE, align 4
  %217 = call i64 @strncmp(i8* %127, i32 %215, i32 %216)
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %207, %196
  %220 = load i32, i32* @TRUE, align 4
  store i32 %220, i32* %16, align 4
  br label %225

221:                                              ; preds = %207, %184
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %22, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %22, align 4
  br label %134

225:                                              ; preds = %219, %171, %160, %134
  %226 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %226)
  br label %227

227:                                              ; preds = %225, %116
  br label %228

228:                                              ; preds = %227, %78
  %229 = load i32, i32* %16, align 4
  store i32 %229, i32* %14, align 4
  br label %232

230:                                              ; preds = %73
  %231 = load i32, i32* @TRUE, align 4
  store i32 %231, i32* %14, align 4
  br label %232

232:                                              ; preds = %230, %228
  %233 = load i32, i32* %14, align 4
  store i32 %233, i32* %7, align 4
  br label %234

234:                                              ; preds = %232, %61, %41, %31
  %235 = load i32, i32* %7, align 4
  ret i32 %235
}

declare dso_local i32 @netagent_get_flags(i32) #1

declare dso_local i64 @uuid_compare(i32, i32) #1

declare dso_local i64 @netagent_get_generation(i32) #1

declare dso_local i32 @uuid_clear(i32) #1

declare dso_local i64 @uuid_is_null(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @netagent_get_agent_domain_and_type(i32, i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
